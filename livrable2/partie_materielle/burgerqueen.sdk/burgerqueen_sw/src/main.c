/***************************************************************************//**
 *   @file   main.c
 ********************************************************************************
 * Copyright 2013(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 ********************************************************************************
 *   SVN Revision: $WCREV$
 *******************************************************************************/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "xil_cache.h"
#include "xbasic_types.h"
#include "xil_io.h"
#include "cf_hdmi.h"
#include "atv_platform.h"
#include "transmitter.h"
#include "xil_exception.h"
#include "xuartps.h"
#include <stdlib.h>
#include "bitmap.h"
#include "screen_hdmi.h"

#include "xil_printf.h"
#include "cmd.h"
#include "ff.h"
#include "affichage.h"
#include "clavier.h"

#include "base64.h"

/*******Liwp*******/
#include "netif/xadapter.h"
#include "platform.h"
#include "lwIP_webserver.h"

/* Requis pour le mainloop */
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
extern struct netif webserver_netif;

#define BUFF_SIZE 1024

int main() {
	init_platform();
	SCREEN_Init(RESOLUTION_1280x1024);

	AFF_DrawScrn(0x00000000);
	init_netif();
	int err = AFF_LoadTexture();
	if (err) {
		xil_printf("error loading textures\n");
	}

	CMD_Init();

	ADIAPI_TransmitterSetOperatingMode(MODE_XMT);
	ADIAPI_TransmitterSetMuteMode(MODE_XMT);

	// Buttons PB1 et PB2
	KEY_configGPIOs();

	while (1) {

		/* Si une fonction a trigger un refresh alors... */
		if (AFF_GetScrnUpdateStatus() == 1) {

			/* On imprime dans le backbuffer */
			if (AFF_GetAffDetailCmdStatus() == 0) {
				AFF_PrintCmdList(CMD_GetCmdList());
				AFF_PrintStatusBar(CMD_GetCmdList());
				AFF_PrintScrollBar(CMD_GetCmdList());
			} else {
				AFF_PrintDetailCmd(CMD_GetCmdList());
				AFF_PrintScrollBarDetail(CMD_GetCmdList());
			}

			/* Le refresh est terminé. On informe qu'on ne doit plus écrire sur l'écran et on imprime le backbuffer sur l'ecran */
			AFF_DisableScrnUpdate();
		}

		/*Affichage HDMI*/
		SCREEN_Dispaly();

		/* Changement du code Client ou Waiter une fois PB1 ou PB2 presse*/
		KEY_loop_button();

		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(&webserver_netif);
	}

	Xil_DCacheDisable();
	Xil_ICacheDisable();

	return (0);
}
