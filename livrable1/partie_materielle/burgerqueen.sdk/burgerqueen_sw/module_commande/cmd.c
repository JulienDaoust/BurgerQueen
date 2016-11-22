/*
 * cmd.cpp
 *
 *  Created on: Oct 27, 2015
 *      Author: sagag2
 */

#include "cmd.h"
#include "affichage.h"
#include "string.h"
struct CMD_CmdList cmd_list;

void
CMD_Init()
{
	cmd_list.selected_cmd = 0;
	cmd_list.id_cmd = 0;
	cmd_list.nb_cmd = 0;
	cmd_list.first_cmd_to_print = 0;
}

struct CMD_CmdList*
CMD_GetCmdList()
{
	return &cmd_list;
}


void
CMD_Alerte(int num_cmd, char *alerte_txt)
{
	cmd_list.cmds[num_cmd].BOOL_alerte = 1;
	strcpy(cmd_list.cmds[num_cmd].message_alerte, alerte_txt);

	AFF_EnableScrnUpdate();
}

void
CMD_SetCmdServi(int num_cmd)
{
	cmd_list.cmds[num_cmd].status_cmd = CMD_SERVIE;
	AFF_EnableScrnUpdate();
}

void
CMD_AjouterCmd(struct CMD_Cmd* cmd)
{
	cmd->status_cmd = CMD_RECUE;
	cmd->id_cmd = cmd_list.id_cmd++;

	cmd_list.cmds[cmd_list.nb_cmd] = *cmd;
	cmd_list.nb_cmd++;

	AFF_EnableScrnUpdate();
}

void
CMD_SelectNextCmd()
{
	int *i = &cmd_list.selected_cmd;
	if( *i + 1 < cmd_list.nb_cmd) {
		*i = (*i + 1);
	}

	/* On regarde si le mouvement fait en sorte qu'on doit scroll down */
	if ( *i >= cmd_list.first_cmd_to_print + NB_CMD_DISPLAY_IN_SCREEN) {
		cmd_list.first_cmd_to_print += 1;
	}

	AFF_EnableScrnUpdate();
}

void
CMD_SelectPreviousCMD()
{
	int *i = &cmd_list.selected_cmd;
	if( *i - 1 >= 0) {
		*i = *i - 1;
	}

	/* On regarde si le mouvement fait en sorte qu'on doit scroll up */
	if ( *i < cmd_list.first_cmd_to_print ) {
		cmd_list.first_cmd_to_print -= 1;
	}

	AFF_EnableScrnUpdate();
}

void
CMD_SelectNextStatus()
{
	UINT *i = &cmd_list.cmds[cmd_list.selected_cmd].status_cmd;
	// On ne peut pas selectionner le status CMD_SERVIE
	if (*i != CMD_PRETE_A_SERVIR && *i != CMD_SERVIE) {
		*i = (*i + 1);
		AFF_EnableScrnUpdate();
	}
}

void
CMD_SelectPreviousStatus()
{
	UINT *i = &cmd_list.cmds[cmd_list.selected_cmd].status_cmd;
	if(*i != 0 && *i != CMD_SERVIE) {
			*i = *i - 1;
			AFF_EnableScrnUpdate();
	}
}

void
CMD_SelectNextItem()
{
	int *i = &cmd_list.selected_item;
	if( *i + 1 < cmd_list.cmds[cmd_list.selected_cmd].nb_item) {
		*i = (*i + 1);
	}

	/* On regarde si le mouvement fait en sorte qu'on doit scroll down */
	if ( *i >= cmd_list.first_item_to_print + NB_ITEM_DISPLAY_IN_SCREEN) {
		cmd_list.first_item_to_print += 1;
	}

	AFF_EnableScrnUpdate();
}
void
CMD_SelectPreviousItem()
{
	int *i = &cmd_list.selected_item;
	if( *i - 1 >= 0) {
		*i = *i - 1;
	}

	/* On regarde si le mouvement fait en sorte qu'on doit scroll up */
	if ( *i < cmd_list.first_item_to_print ) {
		cmd_list.first_item_to_print -= 1;
	}

	AFF_EnableScrnUpdate();
}

void
CMD_AfficherConsoleCmd(struct CMD_Cmd* cmd)
{

	printf("\n\n\n ************************************\n");
	printf("\n Commande recue : #%d\n",cmd->id_cmd );
	printf("-Nom : %s\n", cmd->nom_client);
	printf("-noTable : %d\n",cmd->no_table);
	printf("-courriel :%s \n",cmd->courriel_client);
	printf("-date : %s\n",cmd->date_cmd);
	printf("-heure : %s\n",cmd->hre_cmd);
	if(cmd->BOOL_pour_emporter)
		printf("-Pour Emporter : Oui\n");
	else
		printf("-Pour Emporter : Non\n");


}


