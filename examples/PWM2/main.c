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
/*
 * Dual Motor PWM Demo for CH552
 * 
 * PWM1 → Motor 1 (ej. P15 o P30)
 * PWM2 → Motor 2 (ej. P34 o P31)
 * 
 * PWM duty cycle sube y baja alternadamente para ambos motores.
 * Asegúrate de definir correctamente los pines PWM en config.h
 *
 * Autor: Cesar Bautista
 * Basado en la librería de Stefan Wagner
 */

 #include <stdio.h>
 #include "src/config.h"
 #include "src/system.h"
 #include "src/gpio.h"
 #include "src/delay.h"
 #include "src/pwm.h"
 
 #define MIN_DUTY 10
 #define MAX_DUTY 240
 #define STEP     10
 #define DELAY    20
 
 void motor_accel_decel(uint8_t pin) {
     for (uint8_t duty = MIN_DUTY; duty <= MAX_DUTY; duty += STEP) {
         PWM_write(pin, duty);
         DLY_ms(DELAY);
     }
     for (uint8_t duty = MAX_DUTY; duty >= MIN_DUTY; duty -= STEP) {
         PWM_write(pin, duty);
         DLY_ms(DELAY);
     }
 }
 
 void motor_pulse(uint8_t pin) {
     for (int i = 0; i < 4; i++) {
         PWM_write(pin, MAX_DUTY);
         DLY_ms(200);
         PWM_write(pin, 0);
         DLY_ms(200);
     }
 }
 
 void motor_ramp_reverse(uint8_t pin) {
     for (uint8_t duty = MIN_DUTY; duty <= MAX_DUTY; duty += STEP) {
         PWM_write(pin, MAX_DUTY - duty);
         DLY_ms(DELAY);
     }
 }
 
 void motor_alternating(uint8_t pin1, uint8_t pin2) {
     for (uint8_t duty = MIN_DUTY; duty <= MAX_DUTY; duty += STEP) {
         PWM_write(pin1, duty);
         PWM_write(pin2, MAX_DUTY - duty);
         DLY_ms(DELAY);
     }
 }
 
 void main(void) {
     CLK_config();
     DLY_ms(5);
 
     PWM_set_freq(1000);  // PWM frecuencia 1kHz
 
     PIN_output(PIN_PWM1);
     PIN_output(PIN_PWM2);
 
     PWM_start(PIN_PWM1);  // P15 o P30
     PWM_start(PIN_PWM2);  // P34 o P31
 
     while (1) {
         // Secuencia 1: aceleración y desaceleración sincronizada
         motor_accel_decel(PIN_PWM1);
         motor_accel_decel(PIN_PWM2);
 
         // Secuencia 2: pulsos rápidos (parar/iniciar)
         motor_pulse(PIN_PWM1);
         motor_pulse(PIN_PWM2);
 
         // Secuencia 3: aceleración invertida
         motor_ramp_reverse(PIN_PWM1);
         motor_ramp_reverse(PIN_PWM2);
 
         // Secuencia 4: alternancia cruzada
         motor_alternating(PIN_PWM1, PIN_PWM2);
         motor_alternating(PIN_PWM2, PIN_PWM1);
     }
 }
 