#include "src/system.h"
#include "src/delay.h"
#include "src/i2c.h"
#include "pca9685.h"
#include <stdint.h>

// Canales según tu estructura
#define CH_GRIP     0  // Garra (abrir/cerrar)
#define CH_UPDOWN   1  // Brazo arriba/abajo
#define CH_FWDREV   2  // Brazo adelante/atrás
#define CH_ROTATE   3  // Giro base

void move_servo(uint8_t channel, uint8_t from, uint8_t to, uint8_t step_delay) {
    if (from == to) return;
    if (from < to) {
        for (uint8_t a = from; a <= to; a++) {
            uint16_t pulse = angle_to_pulse(a, 500, 2500, 50);
            PCA9685_set_pwm(channel, 0, pulse);
            DLY_ms(step_delay);
        }
    } else {
        for (int8_t a = from; a >= to; a--) {
            uint16_t pulse = angle_to_pulse((uint8_t)a, 500, 2500, 50);
            PCA9685_set_pwm(channel, 0, pulse);
            DLY_ms(step_delay);
            if (a == 0) break;
        }
    }
}

void main(void) {
    CLK_config();
    DLY_ms(5);
    I2C_init();
    PCA9685_init();
    PCA9685_set_pwm_freq(50); // Frecuencia estándar para servos

    while (1) {
        // POSICIÓN INICIAL: abrir garra

        // Paso 1: levantar brazo
        move_servo(CH_UPDOWN, 60, 120, 5);

        // Paso 2: estirar brazo hacia adelante
        move_servo(CH_FWDREV, 60, 140, 5);

        // Paso 3: bajar brazo
        move_servo(CH_UPDOWN, 120, 40, 5);

        // Paso 4: cerrar garra (tomar objeto)
        move_servo(CH_GRIP, 0, 180, 5);
        DLY_ms(300);

        // Paso 5: levantar brazo con objeto
        move_servo(CH_UPDOWN, 40, 120, 5);

        // Paso 6: girar brazo
        move_servo(CH_ROTATE, 70, 110, 10);
        DLY_ms(150);

        // Paso 7: bajar brazo
        move_servo(CH_UPDOWN, 120, 60, 5);

        // Paso 8: abrir garra (soltar)
        move_servo(CH_GRIP, 180, 0, 5);
        DLY_ms(300);

        // Paso 9: regreso brazo
        move_servo(CH_UPDOWN, 60, 60, 5);
        move_servo(CH_FWDREV, 140, 60, 5);
        move_servo(CH_ROTATE, 110, 70, 10);
        DLY_ms(500);
    }
}
