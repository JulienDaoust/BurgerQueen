/*
 * affichage.c
 *
 *  Created on: Oct 16, 2015
 *      Author: sagag2
 */

#include <stdio.h>

#include "affichage.h"
#include "ff.h"
#include "cf_hdmi.h"
#include "xil_io.h"

#define SCRN_WIDTH 1280
#define SCRN_HEIGHT 1024

#define CHAR_WIDTH 8
#define CHAR_HEIGHT 16
#define CHAR_IMG_WIDTH 2048

#define ITEM_LIST_Y_OFFSET 600

/* On dessine dans ce buffer avant d'afficher dans l'ecran */
int AFF_BackBuffer[SCRN_WIDTH*SCRN_HEIGHT];

/* Variable qui informe si on doit redessiner l'ecran */
UINT BOOL_ScrnUpdate = 1;

/* Informe si on affiche les détails de la commande ou non */
UINT BOOL_AffDetailCmd = 0;

FATFS FatFs;
UCHAR fontTexture[1048576];		// Ecriture
UCHAR Burger[4000000]; 			// Fond ecran

int
AFF_LoadTexture(void)
{
	FRESULT fr;
	FIL fil1, fil2;
	UINT bytesRead;

	fr = f_mount(&FatFs, "", 0);
	if(fr) goto err_1;

	fr = f_open(&fil1, "font3.bmp", FA_READ);
	if(fr) goto err_2;

	f_read(&fil1, &fontTexture, fil1.fsize, &bytesRead);

	fr = f_open(&fil2, "burger.bmp", FA_READ);
	if(fr) goto err_3;

	f_read(&fil2, &Burger, fil2.fsize, &bytesRead);


	f_close(&fil2);
err_3:
	f_close(&fil1);
err_2:
	f_mount(NULL, "", 0);
err_1:
	return fr;
}

void
AFF_DrawScrn(const UINT color)
{
	int i, j;
	for(i=0; i<SCRN_HEIGHT; ++i) {
		for(j=0; j<SCRN_WIDTH; ++j) {
			int pix = *(int*)(Burger + 54 + ((SCRN_HEIGHT - 1 - i)*SCRN_WIDTH + j)*3) & 0x00FFFFFFFF;
			AFF_BackBuffer[i*SCRN_WIDTH + j + SCRN_WIDTH] = pix;
		}
	}
}

void
AFF_DrawRect(const UINT color, UINT y_top, UINT x_top, UINT height, UINT width)
{
	int i, j;
	for(i=y_top; i<y_top+height; i++) {
		for (j=x_top; j<x_top+width; j++) {
			UINT ancienne_couleur = AFF_BackBuffer[i*SCRN_WIDTH + j];
			AFF_BackBuffer[i*SCRN_WIDTH + j] = (((ancienne_couleur >> 16 & 0xff) + (color >> 16 & 0xff))/2 << 16 & 0x00FF0000)
					+ (((ancienne_couleur >> 8 & 0xff) + (color >> 8 & 0xff))/2 << 8 & 0x0000FF00)
					+ (((ancienne_couleur & 0xff) + (color & 0xff))/2 & 0x000000FF);
		}
	}
}

void
AFF_PrintCharColor(char c,  UINT y_offset, UINT x_offset, UINT color)
{
	c = c - 32;

	int i, j;
	for(i=0; i<CHAR_HEIGHT; ++i) {
		for(j=0; j<CHAR_WIDTH; ++j) {
			int pix = *(int*)(fontTexture + 54 + ((CHAR_HEIGHT - 1 - i)*CHAR_IMG_WIDTH + j + c*CHAR_WIDTH)*3) & 0x00FFFFFFFF;

			/* On ecrit seulement si le pixel est blanc */
			if((pix & 0x00FFFFFF) == 0xFFFFFF) {
				AFF_BackBuffer[i*SCRN_WIDTH + j + SCRN_WIDTH*y_offset + x_offset] = color;
			}
		}
	}
}

void
AFF_PrintChar(char c,  UINT y_offset, UINT x_offset)
{
	AFF_PrintCharColor(c, y_offset, x_offset, 0x00FFFFFF);
}

void
AFF_PrintStringColor(char* string, UINT strlen, UINT y_offset, UINT x_offset, UINT color)
{
	int i;
	for(i=0; i<strlen; i++) {
		AFF_PrintCharColor(string[i], y_offset, x_offset + i*CHAR_WIDTH, color);
	}
}

void
AFF_PrintString(char* string, UINT strlen, UINT y_offset, UINT x_offset)
{
	AFF_PrintStringColor(string, strlen, y_offset, x_offset, 0x00FFFFFF);
}

void
AFF_PrintItem(struct CMD_Item *item, UINT y_offset, UINT x_offset, UINT selected)
{
	int n;
	char buf[100];
	char *txt;

	/* On met la commande en couleur si elle est selectionnée */
	if(selected) {
		AFF_DrawRect(0x000000FF, y_offset, 0, CHAR_HEIGHT*6, SCRN_WIDTH);
	}

	/****************************************************************/
	/****************************************************************/
	txt = "IDENTIFICATEUR: ";
	AFF_PrintString(txt, strlen(txt), y_offset + CHAR_HEIGHT*2, x_offset);
	n = sprintf(buf, "%d", item->id_item);
	AFF_PrintString(buf, n, y_offset + CHAR_HEIGHT*2, x_offset + strlen(txt)*CHAR_WIDTH);
	/****************************************************************/
	txt = "NOMBRE: ";
	AFF_PrintString(txt, strlen(txt), y_offset + CHAR_HEIGHT*3, x_offset);
	n = sprintf(buf, "%d", item->nb_item);
	AFF_PrintString(buf, n, y_offset + CHAR_HEIGHT*3, x_offset + strlen(txt)*CHAR_WIDTH);
	/****************************************************************/
	txt = "OPTIONS: ";
	AFF_PrintString(txt, strlen(txt), y_offset + CHAR_HEIGHT*4, x_offset);
	n = sprintf(buf, "%d", item->id_item);
	AFF_PrintString(item->options, strlen(item->options), y_offset + CHAR_HEIGHT*4, x_offset + strlen(txt)*CHAR_WIDTH);
	/****************************************************************/
}


void
AFF_PrintCmd(struct CMD_Cmd *me, UINT y_offset, UINT x_offset, UINT selected)
{
	int n;
	char buf[100];
	UINT string_color = 0x00FFFFFF;

	/* On met la commande en couleur si elle est selectionnée */
	if (selected) {
		AFF_DrawRect(0x0000FF00, y_offset, 0, CHAR_HEIGHT*6, SCRN_WIDTH);
	}

	if (me->BOOL_alerte == 1) {
		string_color = 0x00FF0000;
		/* Message alerte */
		char txt_alert[] = "ALERTE: ";
		AFF_PrintStringColor(txt_alert, strlen(txt_alert), y_offset, x_offset, string_color);
		AFF_PrintStringColor(me->message_alerte, strlen(me->message_alerte), y_offset, x_offset + 9*CHAR_WIDTH, string_color);
	}

	/* Numero de la commande */
	char txt_num[] = "NUM COMMANDE:";
	AFF_PrintStringColor(txt_num, strlen(txt_num), y_offset + CHAR_HEIGHT*2, x_offset, string_color);
	n = sprintf(buf, "%d", me->id_cmd);
	AFF_PrintStringColor(buf, n, y_offset + CHAR_HEIGHT*3, x_offset, string_color);

	/* Photo du client */
	if (me->photo_client[0] != '\0') {
		int i, j;
		int YOFF = y_offset + CHAR_HEIGHT;
		int XOFF = x_offset + 20*CHAR_WIDTH;
		for(i=YOFF; i<64+YOFF; ++i) {
			for(j=XOFF; j<64+XOFF; ++j) {
				AFF_BackBuffer[i*SCRN_WIDTH + j ] = *(int*)(me->photo_client + 54 + (((i-YOFF))*64 + (j-XOFF))*3);
			}
		}
	}


	/* Nom du client */
	char txt_nom[] = "NOM CLIENT:";
	AFF_PrintStringColor(txt_nom, strlen(txt_nom), y_offset + CHAR_HEIGHT*2, x_offset + CHAR_WIDTH*45, string_color);
	AFF_PrintStringColor(me->nom_client, strlen(me->nom_client), y_offset + CHAR_HEIGHT*3, x_offset + CHAR_WIDTH*45, string_color);


	/* Heure commande */
	char txt_hre[] = "HEURE COMMANDE:";
	AFF_PrintStringColor(txt_hre, strlen(txt_hre), y_offset + CHAR_HEIGHT*2, x_offset + CHAR_WIDTH*90, string_color);
	AFF_PrintStringColor(me->hre_cmd, strlen(me->hre_cmd), y_offset + CHAR_HEIGHT*3, x_offset + CHAR_WIDTH*90, string_color);

	/* On met un background pour l'etat present de la commande */
	AFF_DrawRect(0x0000FFFF, y_offset + CHAR_HEIGHT*( me->status_cmd + 1), x_offset + CHAR_WIDTH*134, CHAR_HEIGHT, CHAR_WIDTH*16);

	/* On affiche tout les etats possible de la commande */
	char *etat[] = {"RECUE", "EN PREPARATION", "PRETE A SERVIR", "SERVIE"};
	AFF_PrintStringColor(etat[0], strlen(etat[0]), y_offset + CHAR_HEIGHT  , x_offset + CHAR_WIDTH*135, string_color);
	AFF_PrintStringColor(etat[1], strlen(etat[1]), y_offset + CHAR_HEIGHT*2, x_offset + CHAR_WIDTH*135, string_color);
	AFF_PrintStringColor(etat[2], strlen(etat[2]), y_offset + CHAR_HEIGHT*3, x_offset + CHAR_WIDTH*135, string_color);
	AFF_PrintStringColor(etat[3], strlen(etat[3]), y_offset + CHAR_HEIGHT*4, x_offset + CHAR_WIDTH*135, string_color);
}

void
AFF_PrintCmdList(struct CMD_CmdList* cmdlist)
{
	AFF_DrawScrn(0x00000000);

	UINT sel_cmd = cmdlist->selected_cmd;
	UINT top_scrn_cmd = cmdlist->first_cmd_to_print;

	int i;
	for(i=top_scrn_cmd; i<top_scrn_cmd + NB_CMD_DISPLAY_IN_SCREEN; ++i) {
		if(i < cmdlist->nb_cmd) {
			int selected = 0;
			if(sel_cmd == i) selected = 1;
			AFF_PrintCmd(&cmdlist->cmds[i], 50 + (i-top_scrn_cmd)*CHAR_HEIGHT*6, 50, selected);
		} else {
			break;
		}
	}
}


void
AFF_PrintDetailCmd(struct CMD_CmdList* cmdlist) {
	struct CMD_Cmd *cmd = &cmdlist->cmds[cmdlist->selected_cmd];

	int n;
	char buf[100];
	char *txt;

	AFF_DrawScrn(0x00000000);

	AFF_DrawRect(0x0000FF00, 50, 0, CHAR_HEIGHT*14, SCRN_WIDTH);


	/****************************************************************/
	/****************************************************************/
	txt = "NOM: ";
	AFF_PrintString(txt, strlen(txt), 50 + CHAR_HEIGHT, 50);
	AFF_PrintString(cmd->nom_client, strlen(cmd->nom_client), 50 + CHAR_HEIGHT, 50 + CHAR_WIDTH*17);
	/****************************************************************/
	txt = "NUM TABLE: ";
	AFF_PrintString(txt, strlen(txt), 50 + CHAR_HEIGHT*3, 50);
	n = sprintf(buf, "%d", cmd->no_table);
	AFF_PrintString(buf, n, 50 + CHAR_HEIGHT*3, 50 + CHAR_WIDTH*17);
	/****************************************************************/
	txt = "COURRIEL: ";
	AFF_PrintString(txt, strlen(txt), 50 + CHAR_HEIGHT*5, 50);
	AFF_PrintString(cmd->courriel_client, strlen(cmd->courriel_client), 50 + CHAR_HEIGHT*5, 50 + CHAR_WIDTH*17);
	/****************************************************************/
	txt = "DATE: ";
	AFF_PrintString(txt, strlen(txt), 50 + CHAR_HEIGHT*7, 50);
	AFF_PrintString(cmd->date_cmd, strlen(cmd->date_cmd), 50 + CHAR_HEIGHT*7, 50 + CHAR_WIDTH*17);
	/****************************************************************/
	txt = "HEURE: ";
	AFF_PrintString(txt, strlen(txt), 50 + CHAR_HEIGHT*9, 50);
	AFF_PrintString(cmd->hre_cmd, strlen(cmd->hre_cmd), 50 + CHAR_HEIGHT*9, 50 + CHAR_WIDTH*17);
	/****************************************************************/
	txt = "POUR EMPORTER: ";
	AFF_PrintString(txt, strlen(txt), 50 + CHAR_HEIGHT*11, 50);
	if (cmd->BOOL_pour_emporter == 1)
		AFF_PrintString("OUI", 4, 50 + CHAR_HEIGHT*11, 50 + CHAR_WIDTH*17);
	else
		AFF_PrintString("NON", 4, 50 + CHAR_HEIGHT*11, 50 + CHAR_WIDTH*17);
	/****************************************************************/
	/****************************************************************/

	AFF_DrawRect(0x00FF0000, ITEM_LIST_Y_OFFSET-2*CHAR_HEIGHT, 0, 2*CHAR_HEIGHT, SCRN_WIDTH);


	/****************************************************************/
	/* LISTE COMMANDE                                               */
	/****************************************************************/
	UINT sel_item = cmdlist->selected_item;
	UINT top_scrn_item = cmdlist->first_item_to_print;
	struct CMD_Cmd *selected_cmd = &cmdlist->cmds[cmdlist->selected_cmd];

	int i;
	for(i=top_scrn_item; i<top_scrn_item + NB_ITEM_DISPLAY_IN_SCREEN; ++i) {
		if(i < selected_cmd->nb_item) {
			int selected = 0;
			if(sel_item == i) selected = 1;
			AFF_PrintItem(&selected_cmd->items[i], ITEM_LIST_Y_OFFSET + (i-top_scrn_item)*CHAR_HEIGHT*6, 50, selected);
		} else {
			break;
		}
	}
}



void
AFF_PrintScrollBar(struct CMD_CmdList* cmdlist)
{
	if(cmdlist->nb_cmd > NB_CMD_DISPLAY_IN_SCREEN) {
		int begin = cmdlist->first_cmd_to_print;

		int largeur = SCRN_HEIGHT / cmdlist->nb_cmd;

		AFF_DrawRect(0x0000FFFF, begin*largeur, SCRN_WIDTH - 2*CHAR_WIDTH, NB_CMD_DISPLAY_IN_SCREEN*largeur, 2*CHAR_WIDTH);
	}
}

void
AFF_PrintScrollBarDetail(struct CMD_CmdList* cmdlist)
{
	struct CMD_Cmd *cmd = &cmdlist->cmds[cmdlist->selected_cmd];

	if(cmd->nb_item > NB_ITEM_DISPLAY_IN_SCREEN) {
		int begin = cmdlist->first_item_to_print;

		int largeur = (SCRN_HEIGHT - ITEM_LIST_Y_OFFSET) / cmd->nb_item;

		AFF_DrawRect(0x0000FFFF, begin*largeur + ITEM_LIST_Y_OFFSET, SCRN_WIDTH - 2*CHAR_WIDTH, NB_ITEM_DISPLAY_IN_SCREEN*largeur, 2*CHAR_WIDTH);
	}
}

void
AFF_PrintStatusBar(struct CMD_CmdList* cmdlist)
{
	int cmd_recues 			= 0;
	int cmd_en_prep 		= 0;
	int cmd_pretes_a_servir = 0;
	int cmd_servies			= 0;

	int i;
	for(i=0; i<cmdlist->nb_cmd; ++i) {
		switch (cmdlist->cmds[i].status_cmd) {
		case CMD_RECUE          :
			cmd_recues++;
			break;
		case CMD_EN_PREPARATION :
			cmd_en_prep++;
			break;
		case CMD_PRETE_A_SERVIR :
			cmd_pretes_a_servir++;
			break;
		case CMD_SERVIE         :
			cmd_servies++;
			break;
		}
	}


	AFF_DrawRect(0x00FF00FF, SCRN_HEIGHT-3*CHAR_HEIGHT, 0, CHAR_HEIGHT*3, SCRN_WIDTH);

	int n;
	char buf[100];

	char txt_cmd_recu[] = "commandes recues: ";
	AFF_PrintString(txt_cmd_recu, strlen(txt_cmd_recu), SCRN_HEIGHT-2*CHAR_HEIGHT, 50);
	n = sprintf(buf, "%d", cmd_recues);
	AFF_PrintString(buf, n, SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + strlen(txt_cmd_recu)*CHAR_WIDTH);

	char txt_cmd_prep[] = "en preparation: ";
	AFF_PrintString(txt_cmd_prep, strlen(txt_cmd_prep), SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + 25*CHAR_WIDTH);
	n = sprintf(buf, "%d", cmd_en_prep);
	AFF_PrintString(buf, n, SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + 25*CHAR_WIDTH + strlen(txt_cmd_prep)*CHAR_WIDTH);

	char txt_cmd_pret[] = "pretes a servir: ";
	AFF_PrintString(txt_cmd_pret, strlen(txt_cmd_pret), SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + 50*CHAR_WIDTH);
	n = sprintf(buf, "%d", cmd_pretes_a_servir);
	AFF_PrintString(buf, n, SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + 50*CHAR_WIDTH + strlen(txt_cmd_pret)*CHAR_WIDTH);


	char txt_cmd_servi[] = "servies: ";
	AFF_PrintString(txt_cmd_servi, strlen(txt_cmd_servi), SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + 75*CHAR_WIDTH);
	n = sprintf(buf, "%d", cmd_servies);
	AFF_PrintString(buf, n, SCRN_HEIGHT-2*CHAR_HEIGHT, 50 + 75*CHAR_WIDTH + strlen(txt_cmd_servi)*CHAR_WIDTH);
}


void
AFF_EnableScrnUpdate()
{
	BOOL_ScrnUpdate = 1;
}

void
AFF_DisableScrnUpdate()
{
	/* On imprime la backbuffer sur l'ecran */
	int i;
	for(i=0; i<SCRN_WIDTH*SCRN_HEIGHT; ++i) {
		Xil_Out32(VIDEO_BASEADDR + i*4, AFF_BackBuffer[i]);
	}

	BOOL_ScrnUpdate = 0;
}

UINT
AFF_GetScrnUpdateStatus()
{
	return BOOL_ScrnUpdate;
}

UINT
AFF_GetAffDetailCmdStatus()
{
	return BOOL_AffDetailCmd;
}

void
AFF_SwitchScreen()
{
	CMD_GetCmdList()->first_item_to_print = 0;
	CMD_GetCmdList()->selected_item = 0;
	if(BOOL_AffDetailCmd == 1) {
		BOOL_AffDetailCmd = 0;
	} else {
		BOOL_AffDetailCmd = 1;
	}

	AFF_EnableScrnUpdate();
}




