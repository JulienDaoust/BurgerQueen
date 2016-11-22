/*
 * affichage.h
 *
 *  Created on: Oct 16, 2015
 *      Author: sagag2
 */

#ifndef AFFICHAGE_H_
#define AFFICHAGE_H_

#include "cmd.h"

typedef unsigned int UINT;


/*******************************************************************************************************************
 * LOAD TEXTURE
 ******************************************************************************************************************/
int AFF_LoadTexture(void);

/*******************************************************************************************************************
 * FONCTION DE DESSIN
 ******************************************************************************************************************/
void AFF_DrawScrn(const UINT color);
void AFF_DrawRect(const UINT color, UINT y_top, UINT x_top, UINT height, UINT width);

void AFF_PrintCharColor(char c,  UINT y_offset, UINT x_offset, UINT color);
void AFF_PrintChar(char c,  UINT y_offset, UINT x_offset);
void AFF_PrintStringColor(char* string, UINT strlen, UINT y_offset, UINT x_offset, UINT color);
void AFF_PrintString(char* string, UINT strlen, UINT y_offset, UINT x_offset);

void AFF_PrintItem(struct CMD_Item *item, UINT y_offset, UINT x_offset, UINT selected);

void AFF_PrintCmd(struct CMD_Cmd *me, UINT y_offset, UINT x_offset, UINT selected);
void AFF_PrintCmdList(struct CMD_CmdList* cmdlist);

/* Imprime les détails de la commande séléctionné au meme moment
 * On va chercher automatiquement la commande sélectionné
 */
void AFF_PrintDetailCmd(struct CMD_CmdList* cmdlist);

void AFF_PrintScrollBar(struct CMD_CmdList* cmdlist);
void AFF_PrintScrollBarDetail(struct CMD_CmdList* cmdlist);
void AFF_PrintStatusBar(struct CMD_CmdList* cmdlist);


/*******************************************************************************************************************
 * FONCTION GESTION ECRITURE SUR ECRAN
 ******************************************************************************************************************/
/* Cette fonction doit etre utilisé lorsqu'on trigger une fonction qui change l'affichage */
void AFF_EnableScrnUpdate();
/* Cette fonction est appellé automatiquement a la fin d'un refresh */
void AFF_DisableScrnUpdate();
/* Sert a savoir si on doit updaté l'affichage */
UINT AFF_GetScrnUpdateStatus();
/* Sert a savoir si on affiche les détails d'une commande */
UINT AFF_GetAffDetailCmdStatus();
/* Sert a changer entre la vue détails et liste commande */
void AFF_SwitchScreen();

#endif /* AFFICHAGE_H_ */
