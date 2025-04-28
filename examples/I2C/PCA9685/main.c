#include "src/system.h"
#include "src/delay.h"
#include "src/i2c.h"
// #include "src/usb_cdc.h"
#include "pca9685.h"
#include <stdint.h>

// void USB_ISR(void) __interrupt(INT_NO_USB) {
//     USB_interrupt();
// }

void main(void) {
    CLK_config();
    DLY_ms(5);
    I2C_init();
    // CDC_init();

    PCA9685_init();
    PCA9685_set_pwm_freq(50); // 50 Hz para servos

    // for (int i = 0; i < 10; i++) {
    //     CDC_println(".");
    //     DLY_ms(100);
    // }
    // CDC_println("PCA9685 Inicializado!");

    // <<< Ahora 4 motores >>>
    uint8_t angle0 = 0, angle1 = 90, angle2 = 180, angle3 = 45;
    uint8_t dir0 = 1, dir1 = 0, dir2 = 1, dir3 = 1;

    while (1) {
        uint16_t pulse0 = angle_to_pulse(angle0, 500, 2500, 50);
        uint16_t pulse1 = angle_to_pulse(angle1, 500, 2500, 50);
        uint16_t pulse2 = angle_to_pulse(angle2, 500, 2500, 50);
        uint16_t pulse3 = angle_to_pulse(angle3, 500, 2500, 50);

        PCA9685_set_pwm(0, 0, pulse0); // Motor 0
        PCA9685_set_pwm(1, 0, pulse1); // Motor 1
        PCA9685_set_pwm(2, 0, pulse2); // Motor 2
        PCA9685_set_pwm(3, 0, pulse3); // Motor 3

        // <<< Actualizar los ángulos >>>
        if (dir0) {
            angle0++;
            if (angle0 >= 180) dir0 = 0;
        } else {
            if (angle0 == 0) dir0 = 1;
            else angle0--;
        }

        if (dir1) {
            angle1++;
            if (angle1 >= 180) dir1 = 0;
        } else {
            if (angle1 == 0) dir1 = 1;
            else angle1--;
        }

        if (dir2) {
            angle2++;
            if (angle2 >= 180) dir2 = 0;
        } else {
            if (angle2 == 0) dir2 = 1;
            else angle2--;
        }

        if (dir3) {
            angle3++;
            if (angle3 >= 180) dir3 = 0;
        } else {
            if (angle3 == 0) dir3 = 1;
            else angle3--;
        }

        DLY_ms(5); // Movimiento suave para todos
    }
}
