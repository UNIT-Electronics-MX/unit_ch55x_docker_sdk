// The original code is licensed under the Creative Commons Attribution-ShareAlike 3.0
// Unported License (CC BY-SA 3.0). For more details, visit:
// http://creativecommons.org/licenses/by-sa/3.0/
//
// Modifications and additional code in this file are licensed under the GNU General
// Public License v3.0 (GPL-3.0). For more information, see:
// https://www.gnu.org/licenses/gpl-3.0.en.html
//
// 2022 by
// ===================================================================================
// I2C Functions for CH551, CH552 and CH554                                   * v1.1 *
// ===================================================================================
//
// Simple I2C bitbanging for 400kHz slave devices. For system clock < 12MHz the 
// I2C clock frequency is slower. ACK bit of the slave is ignored. Clock stretching 
// by the slave is not allowed.
//
// PIN_SDA and PIN_SCL must be defined in config.h:
// PIN_SDA - pin connected to serial data of the I2C bus
// PIN_SCL - pin connected to serial clock of the I2C bus
// External pull-up resistors (4k7 - 10k) are mandatory!
//
// Further information:     https://github.com/wagiminator/ATtiny13-TinyOLEDdemo
// 2022 by Stefan Wagner:   https://github.com/wagiminator

#pragma once
#include <stdint.h>

void I2C_init(void);            // I2C init function
void I2C_start(uint8_t addr);   // I2C start transmission
void I2C_restart(uint8_t addr); // I2C restart transmission
void I2C_stop(void);            // I2C stop transmission
void I2C_write(uint8_t data);   // I2C transmit one data byte to the slave
uint8_t I2C_read(uint8_t ack);  // I2C receive one data byte from the slave
