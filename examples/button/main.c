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

#define PIN_LED P34
#define PIN_BUTTON P33

void main(void)
{
  CLK_config();
  DLY_ms(5);
  PIN_input(PIN_BUTTON);
  PIN_output(PIN_LED);
  while (1)
  {
    if (PIN_read(PIN_BUTTON)){
      PIN_high(PIN_LED);
    }
    else{
      PIN_low(PIN_LED);
    }
  }
}