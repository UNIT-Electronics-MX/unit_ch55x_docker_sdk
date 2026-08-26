// ===================================================================================
// User Configurations for CH552G USB ADC KEYBOARD
// ===================================================================================

#pragma once

// -----------------------------------------------------------------------------
// Pin assignment
// -----------------------------------------------------------------------------
#define PIN_GREEN P32  // Green fret -> 'A'
#define PIN_RED P14  // Red fret -> 'S'
#define PIN_YELLOW P15  // Yellow fret -> 'J'
#define PIN_BLUE P16  // Blue fret -> 'K'
#define PIN_ORANGE P17  // Orange fret -> 'L'

#define PIN_STRUM_UP P31  // Strum up -> Up Arrow
#define PIN_STRUM_DOWN P30  // Strum down -> Down Arrow

#define PIN_STAR_POWER P34  // Star Power / Select -> 'H'
#define PIN_START P33  // Start / Pause -> Enter
#define PIN_WHAMMY_POT P11  // Whammy potentiometer (ADC)

// Required by src/neo.c; do not initialize NeoPixel while P33 is used for Start.
#define PIN_NEO P33

// ADC deadzone (~30 digital steps, equivalent to ~0.6 V)
#define WHAMMY_DEADZONE 30

// NeoPixel configuration
#define NEO_COUNT           1          // number of pixels in the string


#define NEO_GRB                         // type of pixel: NEO_GRB or NEO_RGB

// USB device descriptor
#define USB_VENDOR_ID       0x1189      // VID
#define USB_PRODUCT_ID      0x8890      // PID
#define USB_DEVICE_VERSION  0x0100      // v1.0 (BCD-format)

// USB configuration descriptor
#define USB_MAX_POWER_mA    150         // max power in mA

// USB descriptor strings
#define MANUFACTURER_STR    'g','e','n','e','r','i','c','d','e','v','i','c','e'
#define PRODUCT_STR         'H','I','D',' ','K','e','y','b','o','a','r','d'
#define SERIAL_STR          'C','H','5','5','2','x','H','I','D'
#define INTERFACE_STR       'H','I','D','-','K','e','y','b','o','a','r','d'
