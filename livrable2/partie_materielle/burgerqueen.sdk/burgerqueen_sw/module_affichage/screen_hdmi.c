
#include <stdio.h>
#include "screen_hdmi.h"
#include "affichage.h"

extern void delay_ms(u32 ms_count);
extern char inbyte(void);
FATFS FatFs;

/******************************************************************************/
/************************** Macros Definitions ********************************/
/******************************************************************************/
#define HDMI_CALL_INTERVAL_MS	10			/* Interval between two         */
											/* iterations of the main loop  */
#define DBG_MSG                 xil_printf
#define BUFF_SIZE				1024

/******************************************************************************/
/************************ Variables Definitions *******************************/
/******************************************************************************/
static UCHAR    MajorRev;      /* Major Release Number */
static UCHAR    MinorRev;      /* Usually used for code-drops */
static UCHAR    RcRev;         /* Release Candidate Number */
static BOOL     DriverEnable;
static BOOL     LastEnable;

/***************************************************************************//**
 * @brief Enables the driver.
 *
 * @return Returns ATVERR_OK.
*******************************************************************************/
void APP_EnableDriver (BOOL Enable)
{
    DriverEnable = Enable;
}

/***************************************************************************//**
 * @brief Returns the driver enable status.
 *
 * @return Returns the driver enable status.
*******************************************************************************/
static BOOL APP_DriverEnabled (void)
{
    if ((DriverEnable && HAL_GetMBSwitchState()) != LastEnable)
    {
        LastEnable = DriverEnable && HAL_GetMBSwitchState();
//        DBG_MSG ("APP: Driver %s\n\r", LastEnable? "Enabled": "Disabled");
    }
    return (LastEnable);
}

/***************************************************************************//**
 * @brief Displays the application version and the chip revision.
 *
 * @return None.
*******************************************************************************/
static void APP_PrintRevisions (void)
{
	UINT16 TxRev;

	ADIAPI_TxGetChipRevision(&TxRev);

//	DBG_MSG("\n\r********************************************************************\r\n");
//	DBG_MSG("  ADI HDMI Trasmitter Application Ver R%d.%d.%d\n\r", MajorRev, MinorRev, RcRev);
//	DBG_MSG("  HDMI-TX:  ADV7511 Rev 0x%x\r\n", TxRev);
//	DBG_MSG("  Created:  %s At %s\n\r", __DATE__, __TIME__);
//	DBG_MSG("********************************************************************\r\n\n\r");
}

/***************************************************************************//**
 * @brief Changes the video resolution.
 *
 * @return None.
*******************************************************************************/
//static void APP_ChangeResolution (void)
//{
//	char *resolutions[7] = {"640x480", "800x600", "1024x768", "1280x720", "1360x768", "1600x900", "1920x1080"};
//	char receivedChar    = 0;
//
//	if(XUartPs_IsReceiveData(UART_BASEADDR))
//	{
//		receivedChar = inbyte();
//		if((receivedChar >= 0x30) && (receivedChar <= 0x36))
//		{
//			SetVideoResolution(receivedChar - 0x30);
////			DBG_MSG("Resolution was changed to %s \r\n", resolutions[receivedChar - 0x30]);
//		}
//		else
//		{
//			if((receivedChar != 0x0A) && (receivedChar != 0x0D))
//			{
//				SetVideoResolution(RESOLUTION_640x480);
////				DBG_MSG("Resolution was changed to %s \r\n", resolutions[0]);
//			}
//		}
//	}
//}

/***************************************************************************//**
 * @brief Initialisation of screen
 *
 * @return None.
*******************************************************************************/

void SCREEN_Init(UINT32 resolution)
{

	UINT32 StartCount;

		MajorRev     = 1;
		MinorRev     = 1;
		RcRev        = 1;
		DriverEnable = TRUE;
		LastEnable   = FALSE;

		Xil_ICacheEnable();
		Xil_DCacheEnable();

	#ifdef XPAR_AXI_IIC_0_BASEADDR
		HAL_PlatformInit(XPAR_AXI_IIC_0_BASEADDR,	/* Perform any required platform init */
						 XPAR_SCUTIMER_DEVICE_ID,	/* including hardware reset to HDMI devices */
						 XPAR_SCUGIC_SINGLE_DEVICE_ID,
						 XPAR_SCUTIMER_INTR);
	#else
		HAL_PlatformInit(XPAR_AXI_IIC_MAIN_BASEADDR,	/* Perform any required platform init */
						 XPAR_SCUTIMER_DEVICE_ID,	/* including hardware reset to HDMI devices */
						 XPAR_SCUGIC_SINGLE_DEVICE_ID,
						 XPAR_SCUTIMER_INTR);
	#endif

		Xil_ExceptionEnable();

		SetVideoResolution( resolution);
		InitHdmiAudioPcore();

		APP_PrintRevisions();       /* Display S/W and H/W revisions */

//		DBG_MSG("To change the video resolution press:\r\n");
//		DBG_MSG("  '0' - 640x480;  '1' - 800x600;  '2' - 1024x768; '3' - 1280x720 \r\n");
//		DBG_MSG("  '4' - 1360x768; '5' - 1600x900; '6' - 1920x1080.\r\n");

		ADIAPI_TransmitterInit();   /* Initialize ADI repeater software and h/w */

		ADIAPI_TransmitterSetPowerMode(REP_POWER_UP);

		StartCount = HAL_GetCurrentMsCount();

}

void SCREEN_Dispaly()
{
	if (APP_DriverEnabled())
	{
		ADIAPI_TransmitterMain();

	}
}

