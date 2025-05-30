// ===================================================================================
// SSD1306 128x64 Pixels OLED Terminal Functions                              * v1.0 *
// ===================================================================================
//
// Collection of the most necessary functions for controlling an SSD1306 128x64 pixels
// I2C OLED for the display of text in the context of emulating a terminal output.
//
// References:
// -----------
// - Stephen Denne: https://github.com/datacute/Tiny4kOLED
// - David Johnson-Davies: http://www.technoblogy.com/show?TV4
// - TinyOLEDdemo: https://github.com/wagiminator/attiny13-tinyoleddemo
// - TinyTerminal: https://github.com/wagiminator/ATtiny85-TinyTerminal
//
// 2022 by Stefan Wagner: https://github.com/wagiminator

// The original code is licensed under the Creative Commons Attribution-ShareAlike 3.0
// Unported License (CC BY-SA 3.0). For more details, visit:
// http://creativecommons.org/licenses/by-sa/3.0/
//
// Modifications and additional code in this file are licensed under the GNU General
// Public License v3.0 (GPL-3.0). For more information, see:
// https://www.gnu.org/licenses/gpl-3.0.en.html
//
// 2022 by
#pragma once
#include <stdint.h>

void OLED_init(void);           // OLED init function
void OLED_clear(void);          // OLED clear screen
void OLED_clearline(uint8_t line); // OLED clear line
void OLED_setline(uint8_t line) ;  // OLED set line
void OLED_write(char c);        // OLED write a character or handle control characters
void OLED_print(char* str);     // OLED print string
void OLED_println(char* str);   // OLED print string with newline
void OLED_scrollDisplaynoclear(void);
void OLED_setCursor(uint8_t col, uint8_t ln); // OLED set cursor position