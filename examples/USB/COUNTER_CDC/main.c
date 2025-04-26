/*
 * example - Derived Version
 * 
 * Original work by Stefan Wagner
 * https://github.com/wagiminator/CH552-USB-CDC-OLED-Terminal
 *
 * Licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/
 *
 * Modifications by Cesar Bautista for integration into Docker SDK
 */
#include "src/system.h" 
#include "src/gpio.h"   
#include "src/delay.h"  
#include "src/usb_cdc.h"
#include <stdlib.h>
#include <stdio.h>

#define PIN_LED1 P11
#define PIN_LED2 P33
#define PIN_LED3 P34

void USB_ISR(void) __interrupt(INT_NO_USB) {
  USB_interrupt();
}

void main(void)
{
  CLK_config();
  DLY_ms(5);
  CDC_init();
  PIN_output(PIN_LED1);
  PIN_output(PIN_LED2);
  PIN_output(PIN_LED3);

  EA = 1;
 
  for (int i = 0; i < 10; i++)
  {
    CDC_println(".");
    DLY_ms(100);
  }


  while (1)
  {
    if (CDC_available()) {
      for (int i = 0; i < 8; i++) {
        // Imprimir el valor en binario
        char buffer[10];
        sprintf(buffer, "%d%d%d\r\n", (i >> 2) & 1, (i >> 1) & 1, i & 1);
        CDC_print(buffer);

        // Encender/Apagar LEDs
        if ((i >> 2) & 1) PIN_high(PIN_LED1); else PIN_low(PIN_LED1);
        if ((i >> 1) & 1) PIN_high(PIN_LED2); else PIN_low(PIN_LED2);
        if (i & 1)        PIN_high(PIN_LED3); else PIN_low(PIN_LED3);

        DLY_ms(1000); // esperar 1 segundo
        // Limpiar el buffer
        CDC_flush(); // Limpiar el buffer de salida
      }
    }
  }
}
