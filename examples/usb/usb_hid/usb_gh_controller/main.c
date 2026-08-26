/*
 * example - Derived Version
 *
 * Original work by Stefan Wagner
 * https://github.com/wagiminator/CH552-USB-CDC-OLED-Terminal
 *
 * Licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/
 *
 * Modifications by Samuel Gonzalez for integration into Docker SDK
 */
#include "config.h"
#include "system.h"
#include "delay.h"
#include "gpio.h"
#include "usb_composite.h"

// Required USB ISR
void USB_interrupt(void);
void USB_ISR(void) __interrupt(INT_NO_USB) {
  USB_interrupt();
}

// Previous digital button states (1 = released through pull-up)
uint8_t green_state = 1;
uint8_t red_state = 1;
uint8_t yellow_state = 1;
uint8_t blue_state = 1;
uint8_t orange_state = 1;
uint8_t strum_up_state = 1;
uint8_t strum_down_state = 1;
uint8_t star_power_state = 1;
uint8_t start_state = 1;

// Whammy calibration and state
uint8_t whammy_rest_value = 0;
uint8_t whammy_state = 0;

void main(void) {
  CLK_config();
  DLY_ms(50);

  // Configure digital inputs with internal pull-ups
  PIN_input_PU(PIN_GREEN);
  PIN_input_PU(PIN_RED);
  PIN_input_PU(PIN_YELLOW);
  PIN_input_PU(PIN_BLUE);
  PIN_input_PU(PIN_ORANGE);
  PIN_input_PU(PIN_STRUM_UP);
  PIN_input_PU(PIN_STRUM_DOWN);
  PIN_input_PU(PIN_STAR_POWER);
  PIN_input_PU(PIN_START);

  // Configure and initialize the ADC channel
  PIN_input(PIN_WHAMMY_POT);
  ADC_input(PIN_WHAMMY_POT);
  ADC_enable();

  // Measure the potentiometer value at startup as the resting reference.
  DLY_ms(20);
  whammy_rest_value = (uint8_t)ADC_read();

  // Initialize the USB HID stack
  HID_init();
  EA = 1;  // Enable global interrupts

  while (1) {
    // Fret buttons
    uint8_t green_reading = PIN_read(PIN_GREEN);
    if (green_reading != green_state) {
      if (green_reading == 0) {
        KBD_press('a');
      } else {
        KBD_release('a');
      }
      green_state = green_reading;
    }

    uint8_t red_reading = PIN_read(PIN_RED);
    if (red_reading != red_state) {
      if (red_reading == 0) {
        KBD_press('s');
      } else {
        KBD_release('s');
      }
      red_state = red_reading;
    }

    uint8_t yellow_reading = PIN_read(PIN_YELLOW);
    if (yellow_reading != yellow_state) {
      if (yellow_reading == 0) {
        KBD_press('j');
      } else {
        KBD_release('j');
      }
      yellow_state = yellow_reading;
    }

    uint8_t blue_reading = PIN_read(PIN_BLUE);
    if (blue_reading != blue_state) {
      if (blue_reading == 0) {
        KBD_press('k');
      } else {
        KBD_release('k');
      }
      blue_state = blue_reading;
    }

    uint8_t orange_reading = PIN_read(PIN_ORANGE);
    if (orange_reading != orange_state) {
      if (orange_reading == 0) {
        KBD_press('l');
      } else {
        KBD_release('l');
      }
      orange_state = orange_reading;
    }

    // Strum buttons
    uint8_t strum_up_reading = PIN_read(PIN_STRUM_UP);
    if (strum_up_reading != strum_up_state) {
      if (strum_up_reading == 0) {
        KBD_press(KBD_KEY_UP_ARROW);
      } else {
        KBD_release(KBD_KEY_UP_ARROW);
      }
      strum_up_state = strum_up_reading;
    }

    uint8_t strum_down_reading = PIN_read(PIN_STRUM_DOWN);
    if (strum_down_reading != strum_down_state) {
      if (strum_down_reading == 0) {
        KBD_press(KBD_KEY_DOWN_ARROW);
      } else {
        KBD_release(KBD_KEY_DOWN_ARROW);
      }
      strum_down_state = strum_down_reading;
    }

    // Star Power button
    uint8_t star_power_reading = PIN_read(PIN_STAR_POWER);
    if (star_power_reading != star_power_state) {
      if (star_power_reading == 0) {
        KBD_press('h');
      } else {
        KBD_release('h');
      }
      star_power_state = star_power_reading;
    }

    // Start button
    uint8_t start_reading = PIN_read(PIN_START);
    if (start_reading != start_state) {
      if (start_reading == 0) {
        KBD_press(KBD_KEY_RETURN);
      } else {
        KBD_release(KBD_KEY_RETURN);
      }
      start_state = start_reading;
    }

    // Whammy bar
    uint8_t adc_reading = (uint8_t)ADC_read();
    uint8_t whammy_pressed = 0;

    if (adc_reading > whammy_rest_value) {
      if ((adc_reading - whammy_rest_value) > WHAMMY_DEADZONE) {
        whammy_pressed = 1;
      }
    }

    if (whammy_pressed != whammy_state) {
      if (whammy_pressed) {
        KBD_press(' ');  // Send Space when the whammy bar is activated
      } else {
        KBD_release(' ');  // Release Space when the whammy bar is released
      }
      whammy_state = whammy_pressed;
    }

    DLY_ms(2);
  }
}
