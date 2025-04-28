#include "pca9685.h"
#include "i2c.h"
#include "delay.h"

void PCA9685_init(void) {
    I2C_start(PCA9685_ADDR << 1);
    I2C_write(PCA9685_MODE1);
    I2C_write(0x00);  // Normal mode
    I2C_stop();
}
void PCA9685_set_pwm_freq(uint16_t freq_hz) {
    uint32_t prescaleval = 25000000UL;
    prescaleval = prescaleval / 4096 / freq_hz;
    prescaleval = prescaleval - 1;
    uint8_t prescale = (uint8_t)prescaleval;

    uint8_t oldmode;

    // Leer MODE1
    I2C_start(PCA9685_ADDR << 1);
    I2C_write(PCA9685_MODE1);
    I2C_restart((PCA9685_ADDR << 1) | 1);
    oldmode = I2C_read(0);
    I2C_stop();

    uint8_t newmode = (oldmode & 0x7F) | 0x10; // Sleep

    I2C_start(PCA9685_ADDR << 1);
    I2C_write(PCA9685_MODE1);
    I2C_write(newmode);
    I2C_stop();

    I2C_start(PCA9685_ADDR << 1);
    I2C_write(PCA9685_PRESCALE);
    I2C_write(prescale);
    I2C_stop();

    I2C_start(PCA9685_ADDR << 1);
    I2C_write(PCA9685_MODE1);
    I2C_write(oldmode);
    I2C_stop();

    DLY_ms(5);

    I2C_start(PCA9685_ADDR << 1);
    I2C_write(PCA9685_MODE1);
    I2C_write(oldmode | 0xA0);
    I2C_stop();
}


void PCA9685_set_pwm(uint8_t channel, uint16_t on, uint16_t off) {
    uint8_t reg = LED0_ON_L + 4 * channel;

    I2C_start(PCA9685_ADDR << 1);
    I2C_write(reg);
    I2C_write(on & 0xFF);
    I2C_write((on >> 8) & 0xFF);
    I2C_write(off & 0xFF);
    I2C_write((off >> 8) & 0xFF);
    I2C_stop();
}

void PCA9685_set_duty_cycle(uint8_t channel, uint16_t duty) {
    if (duty == 0) {
        PCA9685_set_pwm(channel, 0, 4096);
    } else if (duty >= 65535) {
        PCA9685_set_pwm(channel, 4096, 0);
    } else {
        uint16_t pulse = (uint32_t)duty * 4096 / 65536;
        PCA9685_set_pwm(channel, 0, pulse);
    }
}

uint16_t angle_to_duty(uint8_t degrees, uint16_t min_us, uint16_t max_us, uint16_t freq) {
    if (degrees > 180) degrees = 180;
    uint32_t us = min_us + ((uint32_t)(max_us - min_us) * degrees) / 180;
    uint32_t period_us = 1000000 / freq;
    return (uint32_t)us * 65535 / period_us;
}


uint16_t angle_to_pulse(uint8_t degrees, uint16_t min_us, uint16_t max_us, uint16_t freq) {
    if (degrees > 180) degrees = 180;
    uint32_t us = min_us + ((uint32_t)(max_us - min_us) * degrees) / 180;
    uint32_t period_us = 1000000UL / freq;
    return (uint32_t)us * 4096UL / period_us;
}
