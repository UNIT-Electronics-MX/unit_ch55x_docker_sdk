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
#include "src/gpio.h"                    
#include "src/delay.h"                    
#include "src/oled.h"                     


void beep(void) {
  uint8_t i;
  for(i=255; i; i--) {
    PIN_low(PIN_BUZZER);
    DLY_us(125);
    PIN_high(PIN_BUZZER);
    DLY_us(125);
  }
}


void main(void) {
  // Setup
  CLK_config();                           // configure system clock
  DLY_ms(5);                              // wait for clock to stabilize

  OLED_init();                            // init OLED

  OLED_print("*  UNITelectronics  *");
  OLED_print("---------------------\n");
  OLED_print("Ready\n");
  beep();
  while(1) {

  }
}
