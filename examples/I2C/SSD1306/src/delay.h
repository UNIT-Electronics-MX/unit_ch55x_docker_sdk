// ===================================================================================
// Delay Functions for CH551, CH552 and CH554
// ===================================================================================
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

void DLY_us(uint16_t n);    // delay in units of us
void DLY_ms(uint16_t n);    // delay in units of ms
