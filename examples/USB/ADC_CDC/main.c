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
#include <stdlib.h>                      // for atoi
#include <stdio.h>  // para sprintf

#define PIN_ADC P11



void USB_ISR(void) __interrupt(INT_NO_USB) {
  USB_interrupt();
}


void main(void)
{
  CLK_config();
  DLY_ms(5);
  CDC_init();

  EA = 1;
  CDC_println("ADC Example");

  for (int i = 0; i < 10; i++)
  {
    CDC_println(".");
    DLY_ms(100);
  }
  char buffer[5]; // Suficiente para 3 dígitos + '\0'

  ADC_input(PIN_ADC);

  ADC_enable();

  while (1)
  {
    if (CDC_available()) {
      int value = ADC_read(); // read ADC value 0 - 255 (8-bit)
      sprintf(buffer, "%d", value); // convierte int a texto

      CDC_print("ADC Value: ");
      CDC_println(buffer);
      DLY_ms(1000); // wait for 1 second
  }

  
}
}