// Blink a d6 LEDs counting 1 to 6

#include <ch554.h>
#include <debug.h>

// Left Side Pins
#define LED32_PIN 2
#define LED14_PIN 4
#define LED15_PIN 5
#define LED16_PIN 6
#define LED17_PIN 7
// RST
#define LED31_PIN 1
#define LED30_PIN 0
// Set Bits - P1 = 0x90 P3 = 0xB0
SBIT(LED32, 0xB0, LED32_PIN);
SBIT(LED14, 0x90, LED14_PIN);
SBIT(LED15, 0x90, LED15_PIN);
SBIT(LED16, 0x90, LED16_PIN);
SBIT(LED17, 0x90, LED17_PIN);
// RST
SBIT(LED31, 0xB0, LED31_PIN);
SBIT(LED30, 0xB0, LED30_PIN);

// Right Side Pins
// 3v3
// vcc
// gnd
#define LED37_PIN 7
#define LED36_PIN 6
#define LED34_PIN 4
#define LED33_PIN 3
#define LED11_PIN 1
// Set Bits - P1 = 0x90 P3 = 0xB0
// 3v3
// vcc
// gnd
SBIT(LED37, 0xB0, LED37_PIN);
SBIT(LED36, 0xB0, LED36_PIN);
SBIT(LED34, 0xB0, LED34_PIN);
SBIT(LED33, 0xB0, LED33_PIN);
SBIT(LED11, 0x90, LED11_PIN);

void main() {
    CfgFsys();

    P3_DIR_PU &= 0x0C;
    // Configure pin 3.0 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED30_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED30_PIN);
    // Configure pin 3.1 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED31_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED31_PIN);
    // Configure pin 3.2 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED32_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED32_PIN);
    // Configure pin 3.3 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED33_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED33_PIN);
    // Configure pin 3.4 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED34_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED34_PIN);
    // Configure pin 3.6 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED36_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED36_PIN);
    // Configure pin 3.7 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<LED37_PIN);
    P3_DIR_PU = P3_DIR_PU |	(1<<LED37_PIN);

    P1_DIR_PU &= 0x0C;
    // Configure pin 1.1 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<LED11_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<LED11_PIN);
    // Configure pin 1.4 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<LED14_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<LED14_PIN);
    // Configure pin 1.5 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<LED15_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<LED15_PIN);
    // Configure pin 1.6 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<LED16_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<LED16_PIN);
    // Configure pin 1.7 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<LED17_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<LED17_PIN);

    while (1) {
      // ALL OFF
      LED11 = 0, LED14 = 0, LED15 = 0, LED16 = 0, LED17 = 0;
      // LED14 = 0, LED15 = 0, LED16 = 0, LED17 = 0;
      LED30 = 0, LED31 = 0, LED32 = 0, LED33 = 0, LED34 = 0, LED36 = 0, LED37 = 0;
      // LED30 = 0, LED31 = 0, LED32 = 0, LED33 = 0;

      // Blink Die count
      // 1 = LED16 | LED11 | LED37
      // 2 = LED15 | LED30 | LED36
      // 3 = LED16 & LED32 | LED11 & LED17 | LED37 & LED33
      // 4 = LED15 & LED32 | LED30 & LED17 | LED36 & LED33
      // 5 = LED15 & LED16 & LED32 | LED30 & LED11 & LED17 | LED36 & LED37 & LED33
      // 6 = LED14 & LED15 & LED32 | LED31 & LED30 & LED17 | LED34 & LED36 & LED33
      mDelaymS(300);
      LED16 = 1, LED11 = 1, LED37 = 1;
      mDelaymS(300);
      LED16 = 0, LED11 = 0, LED37 = 0;
      mDelaymS(300);
      LED15 = 1, LED30 = 1, LED36 = 1;
      mDelaymS(300);
      LED15 = 0, LED30 = 0, LED36 = 0;
      mDelaymS(300);
      LED16 = 1, LED32 = 1;
      LED11 = 1, LED17 = 1;
      LED37 = 1, LED33 = 1;
      mDelaymS(300);
      LED16 = 0, LED32 = 0;
      LED11 = 0, LED17 = 0;
      LED37 = 0, LED33 = 0;
      mDelaymS(300);
      LED15 = 1, LED32 = 1;
      LED30 = 1, LED17 = 1;
      LED36 = 1, LED33 = 1;
      mDelaymS(300);
      LED15 = 0, LED32 = 0;
      LED30 = 0, LED17 = 0;
      LED36 = 0, LED33 = 0;
      mDelaymS(300);
      LED15 = 1, LED16 = 1, LED32 = 1;
      LED30 = 1, LED11 = 1, LED17 = 1;
      LED36 = 1, LED37 = 1, LED33 = 1;
      mDelaymS(300);
      LED15 = 0, LED16 = 0, LED32 = 0;
      LED30 = 0, LED11 = 0, LED17 = 0;
      LED36 = 0, LED37 = 0, LED33 = 0;
      mDelaymS(300);
      LED14 = 1, LED15 = 1, LED32 = 1;
      LED31 = 1, LED30 = 1, LED17 = 1;
      LED34 = 1, LED36 = 1, LED33 = 1;
      mDelaymS(300);

    }
}
