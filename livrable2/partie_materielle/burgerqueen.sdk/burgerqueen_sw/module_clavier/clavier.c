/*
 * clavier.c
 *
 *  Created on: 2015-11-19
 *      Author: Najib
 */
#include"clavier.h"
#include <stdio.h>
#include "platform.h"
#include "xgpiops.h"
#include "xgpio.h"
#include "Xscutimer.h"
#include "xscugic.h"
#include "Xil_exception.h"
#include "xuartps_hw.h"
#include "xparameters.h"

/*
 * Boutons-poussoirs 1 et 2 accessibles par le MIO vers le PS
 */
#define PB1 50
#define PB2 51
#define LD9 7
#define DELAIANTIREBOND 100
#define UART_BASEADDR       XPS_UART1_BASEADDR
int pressedB1 = 0, pressedB2 = 0;
int nmbrPressB1 = 0, nmbrPressB2 = 0;
char codeClient[4] = { '\0' };
char codeWaiter[4] = { '\0' };
/* variables globales pour les GPIO */
XGpioPs GpioMIO;

int Status;
XGpioPs_Config *GPIO_MIOConfigPtr;

/* configuration du GPIO  */
int KEY_configGPIOs() {

	GPIO_MIOConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&GpioMIO, GPIO_MIOConfigPtr,
			GPIO_MIOConfigPtr->BaseAddr);

	if (Status != XST_SUCCESS)
		return XST_FAILURE;

	XGpioPs_SetDirectionPin(&GpioMIO, PB1, 0);
	XGpioPs_SetDirectionPin(&GpioMIO, PB2, 0);
	XGpioPs_SetDirectionPin(&GpioMIO, LD9, 1);

	XGpioPs_SetOutputEnablePin(&GpioMIO, PB1, 0);
	XGpioPs_SetOutputEnablePin(&GpioMIO, PB2, 0);
	XGpioPs_SetOutputEnablePin(&GpioMIO, LD9, 1);

	return XST_SUCCESS;
}

void KEY_lireCodeClient() {

	char receivedChar = 0;

	if (XUartPs_IsReceiveData(UART_BASEADDR)) {
		// Tantque le buffer contient l'information on continue a le lire caracter par caracter
		receivedChar = inbyte();
		if ((receivedChar >= 0x30) && (receivedChar <= 0x39)) {
			// convertir le caracter lu en string pour le pouvoir concatener
			char charToString[2];
			charToString[0] = receivedChar;
			charToString[1] = '\0';
			// concatener les caracter du code
			strcat(codeClient, charToString);
		} else {
			if ((receivedChar != 0x0A) && (receivedChar != 0x0D)) {
				xil_printf(
						"Error! seuls les numeros sont accepter 0 et 9 \r\n");
				memset(codeClient, 0, sizeof(codeClient));

			}
		}
	}

}

void KEY_lireCodeWaiter() {

	char receivedChar = 0;

	if (XUartPs_IsReceiveData(UART_BASEADDR)) {
		// Tantque le buffer contient l'information on continue a le lire caracter par caracter
		receivedChar = inbyte();
		if ((receivedChar >= 0x30) && (receivedChar <= 0x39)) {
			// convertir le caracter lu en string pour le pouvoir concatener
			char charToString[2];
			charToString[0] = receivedChar;
			charToString[1] = '\0';
			// concatener les caracter du code
			strcat(codeWaiter, charToString);
		} else {
			if ((receivedChar != 0x0A) && (receivedChar != 0x0D)) {
				xil_printf(
						"Error! seuls les numeros sont accepter 0 et 9 \r\n");
				memset(codeWaiter, 0, sizeof(codeWaiter));
			}
		}
	}

}

void KEY_loop_button() {
	int value1, value2;

	/* PB1: Choisir changement du code pour le client */
	value1 = XGpioPs_ReadPin(&GpioMIO, PB1);
	/* PB2: Choisir changement du code pour le waiter */
	value2 = XGpioPs_ReadPin(&GpioMIO, PB2);
	if (value1 == 1 || value2 == 1) {
		XGpioPs_WritePin(&GpioMIO, LD9, 1);
		if (value1 == 1 && value2 == 0) {
			if (pressedB1 == 0) {
				xil_printf("\n\n\n --------------------------------\n");
				xil_printf(
						" Changement de code client ("
								" Une fois le numero saisie appuyer sur Entrer, \n ensuite garder le boutton appuye jusqu'a ce que une confirmation s'affiche)\n");
				xil_printf(" Nouveau code client  : \n");
				pressedB1 = 1;
				pressedB2 = 0;
				KEY_lireCodeClient();
			}
			KEY_lireCodeClient();
			nmbrPressB1++;
		} else if (value1 == 0 && value2 == 1) {
			if (pressedB2 == 0) {
				xil_printf("\n\n\n --------------------------------\n");
				xil_printf(
						" Changement de code Waiter ("
								" Une fois le numero saisie appuyer sur Entrer, \n ensuite garder le boutton appuye jusqu'a ce que une confirmation s'affiche)\n");
				xil_printf(" Nouveau code Waiter : \n");
				pressedB2 = 1;
				pressedB1 = 0;
				KEY_lireCodeWaiter();
			}
			KEY_lireCodeWaiter();
			nmbrPressB2++;
		}

	}

	// Validation de code client et mettre a jour le fichier json codeclient.json avec le nouveau code
	if (nmbrPressB1 >= DELAIANTIREBOND / 2) {
		if (strlen(codeClient) > 0) {
			xil_printf(" -> Nouveau code client: %s \r\n", codeClient);
			APP_SetCodeClient(codeClient);  // Appel a la fonction qui modifie le code dans le fichier json
			memset(codeClient, 0, sizeof(codeClient));
			nmbrPressB1 = 0;
		}
	}

	// Validation de code Waiter et mettre a jour le fichier json codeclient.json avec le nouveau code
	if (nmbrPressB2 >= DELAIANTIREBOND / 2) {
		if (strlen(codeWaiter) > 0) {
			xil_printf(" -> Nouveau code Waiter: %s \r\n", codeWaiter);
			APP_SetCodeWaiter(codeWaiter); // Appel a la fonction qui modifie le code dans le fichier json
			memset(codeWaiter, 0, sizeof(codeWaiter));
			nmbrPressB2 = 0;
		}
	}

	// Pour eviter un rebondissement du boutton

	if (nmbrPressB1 >= DELAIANTIREBOND) {
		pressedB1 = 0;
		XGpioPs_WritePin(&GpioMIO, LD9, 1);
		nmbrPressB1 = 0;
	} else {
		XGpioPs_WritePin(&GpioMIO, LD9, 0);
	}

	if (nmbrPressB2 >= DELAIANTIREBOND) {
		pressedB2 = 0;
		XGpioPs_WritePin(&GpioMIO, LD9, 1);
		nmbrPressB2 = 0;
	} else {
		XGpioPs_WritePin(&GpioMIO, LD9, 0);
	}

}

