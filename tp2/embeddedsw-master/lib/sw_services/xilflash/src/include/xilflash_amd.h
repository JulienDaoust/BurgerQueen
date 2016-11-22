/******************************************************************************
*
* Copyright (C) 2007 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xilflash_amd.h
*
* This file consists definitions, Macros and structures specific to the AMD
* flash devices.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 1.01a ksu  04/10/08 First Release.
* 2.01a ktn  03/31/10 Updated the AMD code to support uniform sector WP modes.
*		      Addded the new definitions XFL_AMD_TOP_WP_UNIFORM and
*		      XFL_AMD_BOTTOM_WP_UNIFORM.
* </pre>
*
******************************************************************************/

#ifndef XFLASH_AMD_H		/* prevent circular inclusions */
#define XFLASH_AMD_H		/* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#ifdef XPAR_XFL_DEVICE_FAMILY_AMD
#include "xilflash.h"

/************************** Constant Definitions *****************************/

/*
 * The following constant defines address of addresses to be sent on address bus
 * when sending command on data bus.
 */
#define XFL_AMD_CMD1_ADDR		(0x0555)
#define XFL_AMD_CMD2_ADDR		(0x02AA)

/*
 * The following constant defines data to be sent on data bus when sending
 * command on data bus.
 */
#define XFL_AMD_CMD1_DATA		(0x00AA)
#define XFL_AMD_CMD2_DATA		(0x0055)

/*
 * The following constant defines command set of AMD flash family.
 */
#define XFL_AMD_CMD_RESET		(0x00F0) /* Reset or read mode */
#define XFL_AMD_CMD_AUTO_SELECT		(0x0090) /* Auto select command */
#define XFL_AMD_CMD_ERASE_RESUME	(0x0030) /* Resume erase */
#define XFL_AMD_CMD_ERASE_SUSPEND	(0x00B0) /* Suspend erase */
#define XFL_AMD_CMD_ERASE1		(0x0080) /* Erase 1 command */
#define XFL_AMD_CMD_ERASE_BLOCK		(0x0030) /* Erase 2 command */
#define XFL_AMD_CMD_UNLOCK_BYPASS	(0x0020) /* Unlock bypass command */
#define XFL_AMD_CMD_PROGRAM		(0x00A0) /* Program command */
#define XFL_AMD_CMD_UNLOCK_BYPASS_RESET1 (0x0090) /* Unlock bypass 1 command */
#define XFL_AMD_CMD_UNLOCK_BYPASS_RESET2 (0x0000) /* Unlock bypass 1 command */
#define XFL_AMD_CMD_ERASE_CHIP		(0x0010) /* Chip erase command */
#define XFL_AMD_CMD_ENTER_EXT_MODE	(0x0088) /* Enter extended mode */
#define XFL_AMD_CMD_EXIT_EXT_MODE	(0x0090) /* Enter extended mode */
#define XFL_AMD_CMD_GROUP_PROTECT1	(0x0060) /* Group protect command */
#define XFL_AMD_CMD_GROUP_PROTECT2	(0x0040) /* Group protect command */

/*
 * The following constant defines command set of AMD flash family.
 */
#define XFL_AMD_SR_ERASE_START_MASK	(0x0008) /* Erase start mask */
#define XFL_AMD_SR_ERASE_COMPL_MASK	(0x0040) /* Erase operation completed
						  * mask */
#define XFL_AMD_SR_ERASE_ERROR_MASK	(0x0020) /* Alternate erase operation
						  * completed mask */

#define XFL_AMD_TOP_BOOT		(0x03)	 /* Top boot device */
#define XFL_AMD_BOTTOM_BOOT		(0x02)	 /* Bottom boot device */
#define XFL_AMD_TOP_WP_UNIFORM		(0x05)	 /* Top WP uniform sectors  */
#define XFL_AMD_BOTTOM_UNIFORM		(0x04)	 /* Bottom WP uniform sectors */

#define XFL_MAX_BANKS			(0x0002) /* Number of banks */
#define XFL_AMD_MANUFECTURE_ID_OFFSET	(0x0000) /* Manufacture ID offset
						  * when reading status  */
#define XFL_AMD_PROT_STATUS_OFFSET	(0x0002) /* Protection status offset
						  * when reading status  */
#define XFL_AMD_GROUP_UNPROTECTED	(0x0000) /* Block is not protected */
#define XFL_AMD_GROUP_PROTECTED		(0x0001) /* Block is protected */
#define XFL_AMD_CHIP_UNPROTECT_ADDR	(0x042)	 /* Chip unprotect address bits
						  */
#define XFL_COUNT_FOR_A_MICROSECOND	(63)	 /* Number of clock pulse for 1
						  * micro second */
/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

int XFlashAmd_Initialize(XFlash * InstancePtr);
int XFlashAmd_Reset(XFlash * InstancePtr);

int XFlashAmd_DeviceControl(XFlash * InstancePtr, u32 Command,
			    DeviceCtrlParam *Parameters);

int XFlashAmd_Read(XFlash * InstancePtr, u32 Offset, u32 Bytes,
		   void *DestPtr);

int XFlashAmd_Write(XFlash * InstancePtr, u32 Offset, u32 Bytes,
		    void *SrcPtr);

int XFlashAmd_Erase(XFlash * InstancePtr, u32 Offset, u32 Bytes);

int XFlashAmd_Lock(XFlash * InstancePtr, u32 Offset, u32 Bytes);
int XFlashAmd_Unlock(XFlash * InstancePtr, u32 Offset, u32 Bytes);
int XFlashAmd_EraseChip(struct XFlashTag * InstancePtr);

#endif /* XPAR_XFL_DEVICE_FAMILY_AMD */

#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */
