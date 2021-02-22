// Roll 3d6 using random numbers

#include <ch552.h>
#include <debug.h>
#include <rand.c>
#include <DataFlash.c>

// Left Side Pins
// Set Bits - P1 = 0x90 P3 = 0xB0
SBIT(LED32, 0xB0, 2);
SBIT(LED14, 0x90, 4);
SBIT(LED15, 0x90, 5);
SBIT(LED16, 0x90, 6);
SBIT(LED17, 0x90, 7);
// RST
SBIT(LED31, 0xB0, 1);
SBIT(LED30, 0xB0, 0);

// Right Side Pins
// Set Bits - P1 = 0x90 P3 = 0xB0
// 3v3
// vcc
// gnd
SBIT(LED37, 0xB0, 7);
SBIT(LED36, 0xB0, 6);
SBIT(LED34, 0xB0, 4);
SBIT(LED33, 0xB0, 3);
SBIT(LED11, 0x90, 1);

// define vars for die values
UINT8 d6n1=0;
UINT8 d6n2=0;
UINT8 d6n3=0;

// define vars for data flash
UINT8 addrn, lenn, buffn;

void alloff() {
  // TURN ALL LEDS OFF
  LED11 = 0, LED14 = 0, LED15 = 0, LED16 = 0, LED17 = 0;
  LED30 = 0, LED31 = 0, LED32 = 0, LED33 = 0, LED34 = 0, LED36 = 0, LED37 = 0;
}

void dieoff(UINT8 die) {
  // Turn OFF one die
  if (die == 1) {
    // Die 1 LEDs
    // LED14, LED15, LED16, LED32
    LED14 = 0, LED15 = 0, LED16 = 0, LED32 = 0;
  }
  if (die == 2) {
    // Die 2 LEDs
    // LED11, LED17, LED30, LED31
    LED11 = 0, LED17 = 0, LED30 = 0, LED31 = 0;
  }
  if (die == 3) {
    // Die 3 LEDs
    // LED33, LED34, LED36, LED37
    LED33 = 0, LED34 = 0, LED36 = 0, LED37 = 0;
  }
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

    // Read seed from data flash
    addrn = 8;
    lenn = 1;
    ReadDataFlash(addrn,lenn,&buffn);

    // Get some random numbers for die results
    // srand seeds the random
    srand(buffn);

    // rand() % 6 = 0-5, add 1 to make it 1-6
    d6n1 = (rand() % 6) + 1;
    d6n2 = (rand() % 6) + 1;
    d6n3 = (rand() % 6) + 1;

    // generate a new random seed
    buffn = (rand() % 256);

    // Write seed to data flash
    WriteDataFlash(addrn,&buffn,lenn);

    // USB UDP/UDM I/O pin enable: 0=P3.6/P3.7 as GPIO, 1=P3.6/P3.7 as USB
    // Clear this bit to use D+/D- as GPIO 3.6/3.7
    PIN_FUNC &= ~bUSB_IO_EN;

    P3_DIR_PU &= 0x0C;
    // Configure pin 3.0 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<0);
    P3_DIR_PU = P3_DIR_PU |	(1<<0);
    // Configure pin 3.1 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<1);
    P3_DIR_PU = P3_DIR_PU |	(1<<1);
    // Configure pin 3.2 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<2);
    P3_DIR_PU = P3_DIR_PU |	(1<<2);
    // Configure pin 3.3 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<3);
    P3_DIR_PU = P3_DIR_PU |	(1<<3);
    // Configure pin 3.4 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<4);
    P3_DIR_PU = P3_DIR_PU |	(1<<4);
    // Configure pin 3.6 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<6);
    P3_DIR_PU = P3_DIR_PU |	(1<<6);
    // Configure pin 3.7 as GPIO output
    P3_MOD_OC = P3_MOD_OC & ~(1<<7);
    P3_DIR_PU = P3_DIR_PU |	(1<<7);

    P1_DIR_PU &= 0x0C;
    // Configure pin 1.1 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<1);
    P1_DIR_PU = P1_DIR_PU |	(1<<1);
    // Configure pin 1.4 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<4);
    P1_DIR_PU = P1_DIR_PU |	(1<<4);
    // Configure pin 1.5 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<5);
    P1_DIR_PU = P1_DIR_PU |	(1<<5);
    // Configure pin 1.6 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<6);
    P1_DIR_PU = P1_DIR_PU |	(1<<6);
    // Configure pin 1.7 as GPIO output
    P1_MOD_OC = P1_MOD_OC & ~(1<<7);
    P1_DIR_PU = P1_DIR_PU |	(1<<7);

    while (1) {
      alloff();

      // Animate Die Roll
      for ( UINT8 i; i < 5; i++ ) {
        LED14 = 1, LED30 = 1, LED33 = 1;
        mDelaymS(100);
        alloff();
        LED15 = 1, LED17 = 1, LED34 = 1;
        mDelaymS(100);
        alloff();
        LED32 = 1, LED31 = 1, LED36 = 1;
        mDelaymS(100);
        alloff();
      }

      // Display results
      showresult(1, d6n1);
      showresult(2, d6n2);
      showresult(3, d6n3);
      mDelaymS(5000);

    }
}
