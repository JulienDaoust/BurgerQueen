/*
 * cmd.h
 *
 *  Created on: Oct 16, 2015
 *      Author: sagag2
 */

#ifndef CMD_H_
#define CMD_H_

#define MAX_CMD 100
#define MAX_ITEM 20

#define NB_CMD_DISPLAY_IN_SCREEN 9
#define NB_ITEM_DISPLAY_IN_SCREEN 4

typedef unsigned int UINT;
typedef unsigned char UCHAR;

enum cmd_status {
		CMD_RECUE,
		CMD_EN_PREPARATION,
		CMD_PRETE_A_SERVIR,
		CMD_SERVIE,
		CMD_NB_STATUS
};

/*******************************************************************************************************************
 * STRUCTURES
 ******************************************************************************************************************/

#define OPTIONS_LENGTH 70
struct CMD_Item {
        int id_item;
        int nb_item;
        char options[OPTIONS_LENGTH];
};


#define PHOTO_CLIENT_LEN 20000
#define NOM_CLIENT_LEN 30
#define COURRIEL_CLIENT_LEN 50
#define DATE_CMD_LEN 10
#define HRE_CMD_LEN 9
#define MESSAGE_ALERTE_LEN 70


struct CMD_Cmd {
        UINT id_cmd;
        char photo_client[PHOTO_CLIENT_LEN];
        UINT BOOL_photo;
        char nom_client[NOM_CLIENT_LEN];
        char courriel_client[COURRIEL_CLIENT_LEN];
        UINT no_table;
        char date_cmd[DATE_CMD_LEN];
        char hre_cmd[HRE_CMD_LEN];
        int BOOL_pour_emporter;
        struct CMD_Item items[MAX_ITEM];
        int nb_item;
        UINT status_cmd;
        int BOOL_alerte;
        char message_alerte[MESSAGE_ALERTE_LEN];
};

struct CMD_CmdList {
	struct CMD_Cmd cmds[MAX_CMD];
	UINT nb_cmd;

	/* Champ utile a l'affichage et la gestion*/
	int id_cmd;						// Contient le ID de la prochaine commande qui sera ajouté
	int selected_cmd; 				//Commande selectionnée par le bouton poussoir
	int first_cmd_to_print; 		//Premiere commande que l'écran doit afficher en haut
    /* Champ utile a l'affichage des details */
	int selected_item; 				//Item selectionnée par le bouton poussoir
	int first_item_to_print; 		//Premier item que l'écran doit afficher en haut
};


/*******************************************************************************************************************
 * INTERFACE POUR INTERAGIR AVEC LES COMMANDES
 ******************************************************************************************************************/
void CMD_AjouterCmd(struct CMD_Cmd* cmd);
struct CMD_CmdList* CMD_GetCmdList();

void CMD_Alerte(int num_cmd, char *alerte_txt);
void CMD_SetCmdServi(int num_cmd);

/*******************************************************************************************************************
 * FONCTION POUR L'AFFICHAGE
 ******************************************************************************************************************/
void CMD_SelectNextCmd();
void CMD_SelectPreviousCMD();

/* Change le status de la commande presentement sélectionné */
void CMD_SelectNextStatus();
void CMD_SelectPreviousStatus();

/* Change l'item selectionne dans les details */
void CMD_SelectNextItem();
void CMD_SelectPreviousItem();


/*******************************************************************************************************************
 * Initialisation
 ******************************************************************************************************************/
void CMD_Init();

/*******************************************************************************************************************
 * FONCTION AFFICHAGE D'UNE COMMANDE SUR RS232(CONSOLE)
 ******************************************************************************************************************/
void CMD_AfficherConsoleCmd(struct CMD_Cmd* cmd);




#endif /* CMD_H_ */
