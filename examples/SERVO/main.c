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

/******************************************************************************
 * INCLUDES
 *****************************************************************************/
/******************************************************************************
 * INCLUDES
 *****************************************************************************/
#include <stdio.h>
#include "src/config.h"
#include "src/system.h"
#include "src/gpio.h"
#include "src/delay.h"
#include "src/pwm.h"

#define SERVO_MID 30   // ~1.5 ms pulse
#define SERVO_MAX 60   // ~2.0 ms pulse
#define SERVO_DELAY 1000

void set_servo_position(int pwm_value) {
    PWM_write(PIN_PWM, pwm_value);
}

void main(void) {
    CLK_config();
    DLY_ms(5);
    PWM_set_freq(50);      // 20 ms period
    PIN_output(PIN_PWM);
    PWM_start(PIN_PWM);

    while (1) {
        set_servo_position(SERVO_MID);  
        DLY_ms(SERVO_DELAY);

        set_servo_position(SERVO_MAX);  
        DLY_ms(SERVO_DELAY);
    }
}
