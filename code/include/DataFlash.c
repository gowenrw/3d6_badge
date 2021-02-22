
/********************************** (C) COPYRIGHT *******************************
* File Name          : DataFlash.C
* Author             : WCH
* Version            : V1.0
* Date               : 2017/01/20
* Description        : CH554 DataFlash
*******************************************************************************/
#include <ch552.h>
#include <debug.h>
#include <DataFlash.h>

/*******************************************************************************
* Function Name  : WriteDataFlash(UINT8 Addr, PUINT8 buf, UINT8 len)
* Description    : DataFlash Write
* Input          : Addr, buf, len
* Output         : None
* Return         :
*******************************************************************************/
UINT8 WriteDataFlash(UINT8 Addr,PUINT8 buf,UINT8 len)
{
    UINT8 i;
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;                                                           // Enter safe mode
    GLOBAL_CFG |= bDATA_WE;                                                    // Enable DataFlash Write
    SAFE_MOD = 0;                                                              // Exit Safe Mode
		ROM_ADDR_H = DATA_FLASH_ADDR >> 8;
    Addr <<= 1;
    for(i=0;i<len;i++)
	  {
        ROM_ADDR_L = Addr + i*2;
        ROM_DATA_L = *(buf+i);
        if ( ROM_STATUS & bROM_ADDR_OK ) {                                     // Operating address is valid
           ROM_CTRL = ROM_CMD_WRITE;                                           // Write
        }
        if((ROM_STATUS ^ bROM_ADDR_OK) > 0) return i;                          // Return status, 0x00=success,0x02=unknown command(bROM_CMD_ERR)
	  }
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;                                                           // Enter safe mode
    GLOBAL_CFG &= ~bDATA_WE;                                                   // Enable DataFlash write protection
    SAFE_MOD = 0;                                                              // Exit Safe Mode
    return i;
}

/*******************************************************************************
* Function Name  : ReadDataFlash(UINT8 Addr, UINT8 len, PUINT8 buf)
* Description    : DataFlash Read
* Input          : Addr, len, buf
* Output         : None
* Return         : UINT8 return
*******************************************************************************/
UINT8 ReadDataFlash(UINT8 Addr,UINT8 len,PUINT8 buf)
{
    UINT8 i;
    ROM_ADDR_H = DATA_FLASH_ADDR >> 8;
    Addr <<= 1;
    for(i=0;i<len;i++){
	  ROM_ADDR_L = Addr + i*2;                                                   // Addr must be an even address
	  ROM_CTRL = ROM_CMD_READ;
//     if ( ROM_STATUS & bROM_CMD_ERR ) return( 0xFF );                        // unknown command
	  *(buf+i) = ROM_DATA_L;
		}
    return i;
}

/*******************************************************************************
* Example Main.c Code using functions
void main( )
{
    UINT8 i,m,len;
    UINT16 j = 0;
    CfgFsys( );                                                                //CH554时钟选择配置
    mDelaymS(20);
    mInitSTDIO( );                                                             //串口0初始化
    printf("start ...\n");

    while(1){
      for(i=0;i<128;i++){	                                                     //循环写入128字节
        len = WriteDataFlash(i,&i,1);                                          //向DataFlash区域偏移地址i写入i
        if(len != 1){
          printf("Write Err 次 = %02x,m = %02x\n",j,(UINT16)m);                //写出错打印
        }
      }
      for(i=0;i<128;i++){                                                      //读DataFlash区域偏移地址i并校验
        len = ReadDataFlash(i,1,&m);
        if((len != 1) ||(m != i)){
          printf("Read Err 次 = %02x, = %02x,addr =%02x ,值= %02x\n",j,(UINT16)(i*2),(UINT16)ROM_DATA_L,(UINT16)m);
        }                                                                      //读校验出错打印
      }
      printf("$$OK %02x \n",j);
      j++;
      mDelaymS(100);
    }
}
*******************************************************************************/
