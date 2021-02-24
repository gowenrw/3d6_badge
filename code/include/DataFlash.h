/*******************************************************************************
* Function Name  : WriteDataFlash(UINT8 Addr, PUINT8 buf, UINT8 len)
* Description    : DataFlash Write
* Input          : Addr, buf, len
* Output         : None
* Return         :
*******************************************************************************/
UINT8 WriteDataFlash(UINT8 Addr,PUINT8 buf,UINT8 len);

/*******************************************************************************
* Function Name  : ReadDataFlash(UINT8 Addr, UINT8 len, PUINT8 buf)
* Description    : DataFlash Read
* Input          : Addr, len, buf
* Output         : None
* Return         : UINT8 r
*******************************************************************************/
UINT8 ReadDataFlash(UINT8 Addr,UINT8 len,PUINT8 buf);
