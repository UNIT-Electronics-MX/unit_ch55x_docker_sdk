#ifndef PCA9685_H
#define PCA9685_H

#include <stdint.h>

#define PCA9685_ADDR 0x41

// Registers
#define PCA9685_MODE1      0x00
#define PCA9685_MODE2      0x01
#define PCA9685_PRESCALE   0xFE
#define LED0_ON_L          0x06

void PCA9685_init(void);
void PCA9685_set_pwm_freq(uint16_t freq_hz);
void PCA9685_set_pwm(uint8_t channel, uint16_t on, uint16_t off);
void PCA9685_set_duty_cycle(uint8_t channel, uint16_t duty);

uint16_t angle_to_duty(uint8_t degrees, uint16_t min_us, uint16_t max_us, uint16_t freq);
uint16_t angle_to_pulse(uint8_t degrees, uint16_t min_us, uint16_t max_us, uint16_t freq);

#endif
