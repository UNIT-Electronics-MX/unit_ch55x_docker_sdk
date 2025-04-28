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

#define PIN_LED P34
#define PIN_BUTTON P31

void USB_ISR(void) __interrupt(INT_NO_USB) {
  USB_interrupt();
}

void main(void)
{
  CLK_config();
  DLY_ms(5);
  CDC_init();    // Inicializar USB CDC
  PIN_input(PIN_BUTTON);
  PIN_output(PIN_LED);

  EA = 1;        // Habilitar interrupciones globales

  for (int i = 0; i < 10; i++)
  {
    CDC_println(".");
    DLY_ms(100);
  }
  CDC_println("Button Example Ready");

  uint8_t last_button_state = 0;

  while (1)
  {
    if (CDC_available()) {
    uint8_t button_state = PIN_read(PIN_BUTTON);

    if (button_state && !last_button_state) {
      // Botón recién presionado
      CDC_println("Button Pressed!");
      PIN_high(PIN_LED);
    }
    else if (!button_state && last_button_state) {
      // Botón recién soltado
      CDC_println("Button Released!");
      PIN_low(PIN_LED);
    }

    last_button_state = button_state;

    DLY_ms(10); // Pequeño retardo para estabilidad
  }

}
}
