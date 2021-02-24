/********************************** (C) COPYRIGHT *******************************
* File Name          : GPIO.C
* Author             : WCH
* Version            : V1.0
* Date               : 2017/01/20
* Description        : CH55x IO Set interface function and GPIO interrupt function
Updated by @alt_bier for SDCC
*******************************************************************************/
// #include <ch552.h>   // called in main.c so not needed here
// #include <debug.h>   // called in main.c so not needed here
#include "gpio.h"
#include "stdio.h"

// #pragma  NOAREGS     // this pragma not supported in sdcc

/*******************************************************************************
* Function Name  : Port1Cfg()
* Description    : Port 1 configuration
* Input          : Mode  0 = Floating input, no pull-up
                         1 = Push-pull input and output
                         2 = Open drain input and output, no pull-up
                         3 = Class 51 mode, open-drain input and output, pull-up, internal circuit can accelerate the level climb from low to high
                   ,UINT8 Pin	(0-7)
* Output         : None
* Return         : None
*******************************************************************************/
void Port1Cfg(UINT8 Mode,UINT8 Pin)
{
  switch(Mode){
    case 0:
      P1_MOD_OC = P1_MOD_OC & ~(1<<Pin);
      P1_DIR_PU = P1_DIR_PU &	~(1<<Pin);
      break;
    case 1:
      P1_MOD_OC = P1_MOD_OC & ~(1<<Pin);
      P1_DIR_PU = P1_DIR_PU |	(1<<Pin);
      break;
    case 2:
      P1_MOD_OC = P1_MOD_OC | (1<<Pin);
      P1_DIR_PU = P1_DIR_PU &	~(1<<Pin);
      break;
    case 3:
      P1_MOD_OC = P1_MOD_OC | (1<<Pin);
      P1_DIR_PU = P1_DIR_PU |	(1<<Pin);
      break;
    default:
      break;
  }
}

/*******************************************************************************
* Function Name  : Port3Cfg()
* Description    : Port 3 configuration
* Input          : Mode  0 = Floating input, no pull-up
                         1 = Push-pull input and output
                         2 = Open drain input and output, no pull-up
                         3 = Class 51 mode, open-drain input and output, pull-up, internal circuit can accelerate the level climb from low to high
                   ,UINT8 Pin	(0-7)
* Output         : None
* Return         : None
*******************************************************************************/
void Port3Cfg(UINT8 Mode,UINT8 Pin)
{
  switch(Mode){
    case 0:
      P3_MOD_OC = P3_MOD_OC & ~(1<<Pin);
      P3_DIR_PU = P3_DIR_PU &	~(1<<Pin);
      break;
    case 1:
      P3_MOD_OC = P3_MOD_OC & ~(1<<Pin);
      P3_DIR_PU = P3_DIR_PU |	(1<<Pin);
      break;
    case 2:
      P3_MOD_OC = P3_MOD_OC | (1<<Pin);
      P3_DIR_PU = P3_DIR_PU &	~(1<<Pin);
      break;
    case 3:
      P3_MOD_OC = P3_MOD_OC | (1<<Pin);
      P3_DIR_PU = P3_DIR_PU |	(1<<Pin);
      break;
    default:
      break;
  }
}

/*******************************************************************************
* Function Name  : GPIOInterruptCfg()
* Description    : GPIO interrupt configuration
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void GPIOInterruptCfg()
{
   GPIO_IE &= ~bIE_IO_EDGE;                                         // High/low level trigger
// GPIO_IE |= bIE_IO_EDGE;                                          // Up/down trigger
// GPIO_IE |= bIE_RXD1_LO;                                          // RXD1 low level or falling edge trigger
   GPIO_IE |= bIE_P1_5_LO | bIE_P1_4_LO | bIE_P1_3_LO | bIE_RST_HI; // P15\P14\P13 low level trigger; RST high level trigger
// GPIO_IE |= bIE_P3_1_LO;                                          // P31 low level or falling edge trigger
// GPIO_IE |= bIE_RXD0_LO;                                          // RXD0 low level or falling edge trigger
   IE_GPIO  = 1;                                                    // GPIO interrupt on
}

#ifdef GPIO_INTERRUPT
/*******************************************************************************
* Function Name  : GPIOInterrupt(void)
* Description    : GPIO Interrupt service routine
*******************************************************************************/
// GPIO interrupt service routine, using register set 1
// changed interrupt to __interrupt and using to __using for SDCC
void GPIOInterrupt(void) __interrupt INT_NO_GPIO __using 1
{
#ifdef DE_PRINTF
      printf("GPIO_STATUS: %02x\n",(UINT16)(PIN_FUNC&bIO_INT_ACT));
#endif
}
#endif
