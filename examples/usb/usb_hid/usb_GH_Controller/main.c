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

// ISR obligatoria para USB
void USB_interrupt(void);
void USB_ISR(void) __interrupt(INT_NO_USB) {
  USB_interrupt();
}

// -----------------------------------------------------------------------------
// Asignación de Pines
// -----------------------------------------------------------------------------
#define PIN_VERDE            P32   // Traste Verde -> Tecla 'A'
#define PIN_ROJO             P14   // Traste Rojo -> Tecla 'S' 
#define PIN_AMARILLO         P15   // Traste Amarillo -> Tecla 'J'
#define PIN_AZUL             P16   // Traste Azul -> Tecla 'K'
#define PIN_NARANJA          P17   // Traste Naranja -> Tecla 'L'

#define PIN_RASGUEO_ARRIBA   P31   // Rasgueo Arriba -> Flecha Arriba
#define PIN_RASGUEO_ABAJO    P30   // Rasgueo Abajo -> Flecha Abajo

#define PIN_PODER_ESTRELLA   P34   // Star Power / Select -> Tecla 'H'
#define PIN_INICIO           P33   // Start / Pausa -> Enter
#define PIN_PALANCA_POT      P11   // Potenciómetro Whammy (ADC)

// Zona muerta para el ADC (~30 puntos digitales equivalen a ~0.6V de margen)
#define ZONA_MUERTA_PALANCA  30

// Variables de estado previo para botones digitales (1 = Reposo por Pull-Up)
uint8_t estado_verde = 1, estado_rojo = 1, estado_amarillo = 1, estado_azul = 1, estado_naranja = 1;
uint8_t estado_rasgueo_arriba = 1, estado_rasgueo_abajo = 1;
uint8_t estado_poder_estrella = 1, estado_inicio = 1;

// Variables para la calibración y estado de la Palanca (Whammy)
uint8_t valor_reposo_palanca = 0;  // Guardará el valor base del potenciómetro (~124 / 2.43V)
uint8_t estado_palanca = 0;        // Estado de la palanca (0 = Soltada, 1 = Activada)

void main(void) {
  CLK_config();
  DLY_ms(50);

  // Configuración de pines digitales con Pull-Up interna
  PIN_input_PU(PIN_VERDE);
  PIN_input_PU(PIN_ROJO);
  PIN_input_PU(PIN_AMARILLO);
  PIN_input_PU(PIN_AZUL);
  PIN_input_PU(PIN_NARANJA);

  PIN_input_PU(PIN_RASGUEO_ARRIBA);
  PIN_input_PU(PIN_RASGUEO_ABAJO);
  PIN_input_PU(PIN_PODER_ESTRELLA);
  PIN_input_PU(PIN_INICIO);

  // Configuración e inicialización del canal analógico (ADC)
  PIN_input(PIN_PALANCA_POT);
  ADC_input(PIN_PALANCA_POT);
  ADC_enable();

  // CALIBRACIÓN EN REPOSO:
  // Mide el valor del potenciómetro al encender como referencia
  DLY_ms(20);
  valor_reposo_palanca = (uint8_t)ADC_read();

  // Inicialización de la pila USB HID
  HID_init();
  EA = 1; // Habilita interrupciones globales

  while (1) {
    // --- BOTONES DE NOTAS (Trastes) ---
    uint8_t lectura_verde = PIN_read(PIN_VERDE);
    if (lectura_verde != estado_verde) {
      if (lectura_verde == 0) KBD_press('a'); else KBD_release('a');
      estado_verde = lectura_verde;
    }

    uint8_t lectura_rojo = PIN_read(PIN_ROJO);
    if (lectura_rojo != estado_rojo) {
      if (lectura_rojo == 0) KBD_press('s'); else KBD_release('s');
      estado_rojo = lectura_rojo;
    }

    uint8_t lectura_amarillo = PIN_read(PIN_AMARILLO);
    if (lectura_amarillo != estado_amarillo) {
      if (lectura_amarillo == 0) KBD_press('j'); else KBD_release('j');
      estado_amarillo = lectura_amarillo;
    }

    uint8_t lectura_azul = PIN_read(PIN_AZUL);
    if (lectura_azul != estado_azul) {
      if (lectura_azul == 0) KBD_press('k'); else KBD_release('k');
      estado_azul = lectura_azul;
    }

    uint8_t lectura_naranja = PIN_read(PIN_NARANJA);
    if (lectura_naranja != estado_naranja) {
      if (lectura_naranja == 0) KBD_press('l'); else KBD_release('l');
      estado_naranja = lectura_naranja;
    }

    // --- RASGUEO (STRUM ARRIBA / ABAJO) ---
    uint8_t lectura_rasgueo_arriba = PIN_read(PIN_RASGUEO_ARRIBA);
    if (lectura_rasgueo_arriba != estado_rasgueo_arriba) {
      if (lectura_rasgueo_arriba == 0) KBD_press(KBD_KEY_UP_ARROW); else KBD_release(KBD_KEY_UP_ARROW);
      estado_rasgueo_arriba = lectura_rasgueo_arriba;
    }

    uint8_t lectura_rasgueo_abajo = PIN_read(PIN_RASGUEO_ABAJO);
    if (lectura_rasgueo_abajo != estado_rasgueo_abajo) {
      if (lectura_rasgueo_abajo == 0) KBD_press(KBD_KEY_DOWN_ARROW); else KBD_release(KBD_KEY_DOWN_ARROW);
      estado_rasgueo_abajo = lectura_rasgueo_abajo;
    }

    // --- PODER ESTRELLA (STAR POWER) ---
    uint8_t lectura_poder_estrella = PIN_read(PIN_PODER_ESTRELLA);
    if (lectura_poder_estrella != estado_poder_estrella) {
      if (lectura_poder_estrella == 0) KBD_press('h'); else KBD_release('h');
      estado_poder_estrella = lectura_poder_estrella;
    }

    // --- BOTÓN INICIO (START / PAUSA) ---
    uint8_t lectura_inicio = PIN_read(PIN_INICIO);
    if (lectura_inicio != estado_inicio) {
      if (lectura_inicio == 0) KBD_press(KBD_KEY_RETURN); else KBD_release(KBD_KEY_RETURN);
      estado_inicio = lectura_inicio;
    }

    // --- PALANCA WHAMMY ---
    uint8_t lectura_adc = (uint8_t)ADC_read();
    uint8_t palanca_presionada = 0;

    // Si la lectura supera el nivel de reposo + el umbral de zona muerta:
    if (lectura_adc > valor_reposo_palanca) {
      if ((lectura_adc - valor_reposo_palanca) > ZONA_MUERTA_PALANCA) {
        palanca_presionada = 1;
      }
    }

    if (palanca_presionada != estado_palanca) {
      if (palanca_presionada) {
        KBD_press(' ');   // Envía Barra Espaciadora al activar la Palanca
      } else {
        KBD_release(' '); // Libera la Barra Espaciadora al soltar
      }
      estado_palanca = palanca_presionada;
    }

    DLY_ms(2);
  }
}