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
#include "src/config.h"
#include "src/system.h"
#include "src/delay.h"
#include "src/neo.h"
#include "src/usb_composite.h"

void USB_interrupt(void);
void USB_ISR(void) __interrupt(INT_NO_USB) {
  USB_interrupt();
}

#pragma disable_warning 110

inline void print_unit_electronics() {
  KBD_print("Unit Electronics");
}

void main(void) {
  CLK_config();
  DLY_ms(10);
  PIN_input(PIN_KEY2);  // Solo necesitamos configurar la tecla que vamos a usar
  HID_init();
  NEO_init();

  while (1) {
    if (PIN_read(PIN_KEY2)) {
      print_unit_electronics();
      NEO_writeColor(0, 0, 255);  // Azul cuando se presiona
      while (PIN_read(PIN_KEY2)); // Esperar a que se suelte la tecla para evitar múltiples impresiones
    } else {
      NEO_writeColor(0, 0, 0);    // Apagar NeoPixel si no está presionado
      DLY_ms(40);
    }
  }
}
