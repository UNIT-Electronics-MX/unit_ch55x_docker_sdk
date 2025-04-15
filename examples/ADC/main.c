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

#define PIN_ADC P11

void main(void)
{
  CLK_config();
  DLY_ms(5);

  ADC_input(PIN_ADC);

  ADC_enable();

  while (1)
  {
    int data = ADC_read(); // read ADC value 0 - 255 (8-bit)
  }
}