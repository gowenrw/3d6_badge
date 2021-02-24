/* *************************************************************************
* File Name          : d6_count/main.c
* Author             : @alt_bier
* Date               : 2021/02/24
* Description        : Roll 3 six sided dice using pseudo random numbers
************************************************************************* */
#include <ch552.h>
#include <debug.h>
#include <gpio.c>

// Set Reference Bits - P1 = 0x90 P3 = 0xB0
// Left Side Pins (as seen top down)
SBIT(LED32, 0xB0, 2);  // Physical Pin 1
SBIT(LED14, 0x90, 4);  // Physical Pin 2
SBIT(LED15, 0x90, 5);  // Physical Pin 3
SBIT(LED16, 0x90, 6);  // Physical Pin 4
SBIT(LED17, 0x90, 7);  // Physical Pin 5
// RST                 // Physical Pin 6
SBIT(LED31, 0xB0, 1);  // Physical Pin 7
SBIT(LED30, 0xB0, 0);  // Physical Pin 8
// Right Side Pins (as seen top down)
// 3v3                 // Physical Pin 16
// vcc                 // Physical Pin 15
// gnd                 // Physical Pin 14
SBIT(LED37, 0xB0, 7);  // Physical Pin 13
SBIT(LED36, 0xB0, 6);  // Physical Pin 12
SBIT(LED34, 0xB0, 4);  // Physical Pin 11
SBIT(LED33, 0xB0, 3);  // Physical Pin 10
SBIT(LED11, 0x90, 1);  // Physical Pin 9

void alloff() {
  // TURN ALL LEDS OFF
  LED11 = 0, LED14 = 0, LED15 = 0, LED16 = 0, LED17 = 0;
  LED30 = 0, LED31 = 0, LED32 = 0, LED33 = 0, LED34 = 0, LED36 = 0, LED37 = 0;
}

void showresult(UINT8 die, UINT8 dval) {
  if (die == 1) {
    // Die 1 LED values
    // 1 = LED16
    // 2 = LED15
    // 3 = LED16 & LED32
    // 4 = LED15 & LED32
    // 5 = LED15 & LED16 & LED32
    // 6 = LED14 & LED15 & LED32
    if (dval == 1) { LED16 = 1; }
    if (dval == 2) { LED15 = 1; }
    if (dval == 3) { LED16 = 1, LED32 = 1; }
    if (dval == 4) { LED15 = 1, LED32 = 1; }
    if (dval == 5) { LED15 = 1, LED16 = 1, LED32 = 1; }
    if (dval == 6) { LED14 = 1, LED15 = 1, LED32 = 1; }
  }
  if (die == 2) {
    // Die 2 LED values
    // 1 = LED11
    // 2 = LED30
    // 3 = LED11 & LED17
    // 4 = LED30 & LED17
    // 5 = LED30 & LED11 & LED17
    // 6 = LED31 & LED30 & LED17
    if (dval == 1) { LED11 = 1; }
    if (dval == 2) { LED30 = 1; }
    if (dval == 3) { LED11 = 1, LED17 = 1; }
    if (dval == 4) { LED30 = 1, LED17 = 1; }
    if (dval == 5) { LED30 = 1, LED11 = 1, LED17 = 1; }
    if (dval == 6) { LED31 = 1, LED30 = 1, LED17 = 1; }
  }
  if (die == 3) {
    // Die 3 LED values
    // 1 = LED37
    // 2 = LED36
    // 3 = LED37 & LED33
    // 4 = LED36 & LED33
    // 5 = LED36 & LED37 & LED33
    // 6 = LED34 & LED36 & LED33
    if (dval == 1) { LED37 = 1; }
    if (dval == 2) { LED36 = 1; }
    if (dval == 3) { LED37 = 1, LED33 = 1; }
    if (dval == 4) { LED36 = 1, LED33 = 1; }
    if (dval == 5) { LED36 = 1, LED37 = 1, LED33 = 1; }
    if (dval == 6) { LED34 = 1, LED36 = 1, LED33 = 1; }
  }
}

void main() {
    CfgFsys();

    // USB UDP/UDM I/O pin enable: 0=P3.6/P3.7 as GPIO, 1=P3.6/P3.7 as USB
    // Clear this bit to use D+/D- as GPIO 3.6/3.7
    PIN_FUNC &= ~bUSB_IO_EN;

    /* *************************************************************************
    * Set mode for GPIO Pins 1.[0-7] and 3.[0-7]
    * *******************************************
    * Port1Cfg(mode,pin); / Port3Cfg(mode,pin);
    * Mode 0 = Floating input, no pull-up
    * Mode 1 = Push-pull input and output
    * Mode 2 = Open drain input and output, no pull-up
    * Mode 3 = quasi-bidirectional (standard 8051 mode),
    *          open-drain input and output, pull-up,
    *          internal circuit can accelerate level climb from low to high
    ************************************************************************* */
    Port1Cfg(1,1);      // Set mode 1 on Pin 1.1
    Port1Cfg(1,4);      // Set mode 1 on Pin 1.4
    Port1Cfg(1,5);      // Set mode 1 on Pin 1.5
    Port1Cfg(1,6);      // Set mode 1 on Pin 1.6
    Port1Cfg(1,7);      // Set mode 1 on Pin 1.7
    Port3Cfg(1,0);      // Set mode 1 on Pin 3.0
    Port3Cfg(1,1);      // Set mode 1 on Pin 3.1
    Port3Cfg(1,2);      // Set mode 1 on Pin 3.2
    Port3Cfg(1,3);      // Set mode 1 on Pin 3.3
    Port3Cfg(1,4);      // Set mode 1 on Pin 3.4
    Port3Cfg(1,6);      // Set mode 1 on Pin 3.6
    Port3Cfg(1,7);      // Set mode 1 on Pin 3.7

    // Make sure all LEDs are set to OFF before entering loop
    alloff();

    while (TRUE) {

      // Test code to count all 3 dice from 1 to 6 (staggered)
      showresult(1, 1), showresult(2, 2), showresult(3, 3);
      mDelaymS(500), alloff();
      showresult(1, 2), showresult(2, 3), showresult(3, 4);
      mDelaymS(500), alloff();
      showresult(1, 3), showresult(2, 4), showresult(3, 5);
      mDelaymS(500), alloff();
      showresult(1, 4), showresult(2, 5), showresult(3, 6);
      mDelaymS(500), alloff();
      showresult(1, 5), showresult(2, 6), showresult(3, 1);
      mDelaymS(500), alloff();
      showresult(1, 6), showresult(2, 1), showresult(3, 2);
      mDelaymS(500), alloff();

    }
}
