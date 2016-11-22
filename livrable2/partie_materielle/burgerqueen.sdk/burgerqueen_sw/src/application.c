#include <string.h>
#include <stdio.h>
#include "application.h"
#include "cmd.h"
#include "cJSON.h"
#include "JUtils.h"
#include "carteSd.h"
#include "parserJson.h"
#include "base64.h"
#include <stdlib.h>

enum APP_Action {
	APP_ENVOI_CMD,
	APP_ENVOI_CODE,
	APP_DMD_MENU,
	APP_DMD_LISTE_CMD,
	APP_UPDATE_CMD_SERVI,
	APP_ALERT_CMD,
	APP_CHANGEMENT_MDP,
	APP_ACTION_INVALIDE,
	APP_ACTION_UNAUTHORIZED,
	APP_NB_ACTION
};

static enum APP_Action APP_SelectAction(struct HTTP_Request *http_request) {
	enum APP_Action action = APP_ACTION_INVALIDE;

	if (strcmp(http_request->methode, "GET") == 0) {

		if (strcmp(http_request->URI, "/commandes/pretesaservir") == 0) {
			action = APP_DMD_LISTE_CMD;
		}

	} else if (strcmp(http_request->methode, "POST") == 0) {

		if (strcmp(http_request->URI, "/debut") == 0) {
			action = APP_ENVOI_CODE;
		} else if (strcmp(http_request->URI, "/obtenirmenu") == 0) {
			action = APP_DMD_MENU;
		} else if (strcmp(http_request->URI, "/commande") == 0) {
			action = APP_ENVOI_CMD;
		} else if (strncmp(http_request->URI, "/commandes/alerte/:", 19) == 0) {
			action = APP_ALERT_CMD;
		}else if (strncmp(http_request->URI, "/compte/motdepasse/", 19) == 0) {
			action = APP_CHANGEMENT_MDP;
		}

	} else if (strcmp(http_request->methode, "DELETE") == 0) {

		if (strncmp(http_request->URI, "/commandes/:", 12) == 0) {
			action = APP_UPDATE_CMD_SERVI;
		}

	}

    // Android envoie une requette POST a la place de GET
    if (strcmp(http_request->URI, "/commandes/pretesaservir") == 0)
    	action = APP_DMD_LISTE_CMD;

	return action;
}

void
APP_RequestProcessing(char* request, char* response) {
	struct HTTP_Request http_request;
	http_request = HTTP_Response_DeSerialiser(request);
	enum APP_Action action = APP_SelectAction(&http_request);

	/* Autorisation */
	if(action == APP_DMD_LISTE_CMD || action == APP_UPDATE_CMD_SERVI ||	action == APP_ALERT_CMD || action == APP_CHANGEMENT_MDP) {
		if (APP_validerAuthorization(http_request.authorisation) == 0) {
			action = APP_ACTION_UNAUTHORIZED;
		}
	}

	struct HTTP_Response http_response;
	switch (action) {
	case APP_ENVOI_CMD:

		http_response = APP_AjoutCmd(http_request.body);
		break;
	case APP_ENVOI_CODE:
		http_response = APP_EnvoyerCode(http_request.body);
		break;
	case APP_DMD_MENU:
		http_response = APP_EnvoyerMenu();
		break;
	case APP_DMD_LISTE_CMD:
		http_response = APP_EnvoyerListeCmd();
		break;
	case APP_UPDATE_CMD_SERVI:
		http_response = APP_SetCmdServi(&http_request);
		break;
	case APP_ALERT_CMD:
		http_response = APP_Alerte(&http_request);
		break;
	case APP_CHANGEMENT_MDP:
		http_response = APP_ChangerMotDePasse(http_request.body, http_request.authorisation);
		break;
	case APP_ACTION_INVALIDE:
		http_response = APP_ActionNonValide();
		break;
	case APP_ACTION_UNAUTHORIZED:
		http_response = APP_ActionNonAuthorise();
		break;
	default:
		break;

	}

	HTTP_Response_Serialiser(&http_response, response);
}

/*******************************************************************************************************************
 * FONCTIONS QUI APPELLENT LES DIFFÉRENTES INTERFACES
 ******************************************************************************************************************/

struct HTTP_Request HTTP_Response_DeSerialiser(char* payload) {
	char *token = NULL;
	char copyOfPayload[20000];
	char *tokAuth = NULL;	char copyOfPayloadAuthorization[20000];
	// A COMPLETER
	struct HTTP_Request httpRequest;
	strcpy(copyOfPayload, payload);
	strcpy(copyOfPayloadAuthorization, payload);
	char *body = NULL;
	char *authorization = NULL;
	authorization = strstr(copyOfPayloadAuthorization, "Authorization");
	if(authorization != NULL)
	{
		tokAuth = strtok((char*) authorization, " ");
		tokAuth = strtok(NULL, " ");
		tokAuth = strtok(NULL, "\r");
		strcpy(httpRequest.authorisation, tokAuth);
	}
	body = strstr(copyOfPayload, "{");

	strcpy(httpRequest.body, body);

	token = strtok((char*) payload, " ");
	strcpy(httpRequest.methode, token);
	token = strtok(NULL, " ");
	strcpy(httpRequest.URI, token);
	token = strtok(NULL, "\r");
	strcpy(httpRequest.HTTP_ver, token);
	return httpRequest;
}


void HTTP_Response_Serialiser(struct HTTP_Response* http_resp, char* response) {
	strcpy(response, http_resp->HTTP_ver);
	strcat(response, " ");
	int code = http_resp->code;
	char codeCar[10];
	sprintf(codeCar, "%d", code);
	strcat(response, codeCar);
	strcat(response, " ");
	if (strncmp(http_resp->description, "OK", 2) == 0)
		strcat(response, "OK");
	else
		strcat(response, "Not Found");
	strcat(response, "\n");
	strcat(response, "Content-Type: ");
	strcat(response, http_resp->content_type);
	strcat(response, "\n");
	strcat(response, "Content-Length: ");
	int content_len = http_resp->content_length;
	char content_lenCar[10];
	sprintf(content_lenCar, "%d", content_len);
	strcat(response, content_lenCar);
	strcat(response, "\r\n\r\n");
	strcat(response, http_resp->body);

}

struct HTTP_Response APP_ChangerMotDePasse(char* bodyChar, char *authorisation)
{
	/* Déclarer les variables locales */
	struct HTTP_Response http_reponse;
	struct AUT_Utilisateur aut_utilisateur;
	unsigned char *nomPassDecode;
	char *nouveauMotDePasseB64;
	unsigned char *nouveauMotDePasse;
	char *token = NULL;
	char nouveauContenu[20000];
	size_t *decsize = NULL;
	size_t len = strlen(authorisation);

	/* Decoder le contenu de champ authorisation */
	nomPassDecode = b64_decode_ex(authorisation, len, decsize);

	/* Creer un utilisateur à partir des données décodées (champ authentification) */
	token = strtok((char*) nomPassDecode, ":");
	strcpy(aut_utilisateur.nomUtilisateur, token);
	token = strtok(NULL, "\0");
	strcpy(aut_utilisateur.modDePasse, token);

	/* Creer un objet json a partir du texte du body */
	cJSON *bodyJson = cJSON_Parse(bodyChar);
	if (!bodyJson) {
		xil_printf("Error before: [%s]\n", cJSON_GetErrorPtr());
	}

	/* Extraire le nouveau mot de passe qui est en format base64 */
	cJSON *jChild = cJSON_GetObjectItem(bodyJson, "nouveauMotDePasse");
	strcpy(nouveauMotDePasseB64, jChild->valuestring );

	/* on convert notre nouveau mot de passe de base64 à unsigned char */
	size_t *decsizeNMDP = NULL;
	size_t lenNMDP = strlen(nouveauMotDePasseB64);
	nouveauMotDePasse = b64_decode_ex(nouveauMotDePasseB64, lenNMDP, decsizeNMDP);

	/* Charger la liste des utilisateurs a partir de Carte SD si ce n'est pas déjà chargé*/
	int i;
	if(APP_ListDesUtilisateurs.nb_utilisateur == 0) {
		APP_ListDesUtilisateurs = AUT_ChargerListeUtilisateurAPartirCarteSD();
	}
	/* Changer le mot de passe */
	for (i = 0; i < APP_ListDesUtilisateurs.nb_utilisateur; i++) {
		if (strcmp(APP_ListDesUtilisateurs.utilisateurslst[i].nomUtilisateur,
				aut_utilisateur.nomUtilisateur) == 0
				&& strcmp(APP_ListDesUtilisateurs.utilisateurslst[i].modDePasse,
						aut_utilisateur.modDePasse) == 0) {
			strcpy(APP_ListDesUtilisateurs.utilisateurslst[i].modDePasse, NULL);
			strcpy(APP_ListDesUtilisateurs.utilisateurslst[i].modDePasse, nouveauMotDePasse);
		}
	}

	cJSON_Delete(bodyJson);
	http_reponse = APP_ActionOK();
	return http_reponse;
}


int APP_validerAuthorization(char *authorisation)
{
	struct AUT_Utilisateur aut_utilisateur;
	unsigned char *nomPassDecode;
	char *token = NULL;
	size_t *decsize = NULL;
	size_t len = strlen(authorisation);

	/* Decoder le contenu de champ authorisation */
	nomPassDecode = b64_decode_ex(authorisation, len, decsize);

	/* Creer un utilisateur à partir des données décodées (champ authentification) */
	token = strtok((char*) nomPassDecode, ":");
	strcpy(aut_utilisateur.nomUtilisateur, token);
	token = strtok(NULL, "\0");
	strcpy(aut_utilisateur.modDePasse, token);
	//struct AUT_UtilisateurList aut_UtilisateurList;
	int i;
	int authorise = 0;
	/* Charger la liste des utilisateurs a partir de Carte SD si ce n'est pas déjà chargé*/
	if(APP_ListDesUtilisateurs.nb_utilisateur == 0) {
		APP_ListDesUtilisateurs = AUT_ChargerListeUtilisateurAPartirCarteSD();
	}
	/* Valider l'authentification */
	for(i = 0; i < APP_ListDesUtilisateurs.nb_utilisateur; i++){
		if(strcmp(APP_ListDesUtilisateurs.utilisateurslst[i].nomUtilisateur, aut_utilisateur.nomUtilisateur) == 0 && strcmp(APP_ListDesUtilisateurs.utilisateurslst[i].modDePasse, aut_utilisateur.modDePasse) == 0)
			authorise = 1;
	}

	free(nomPassDecode);
	return authorise;  /*retrun 1 si authorization est valide, 0 sinon*/
}


struct HTTP_Response APP_AjoutCmd(char* bodyChar) {
	struct HTTP_Response http_response;

	cJSON *bodyJson = cJSON_Parse(bodyChar);
	if (!bodyJson) {
		xil_printf("Error before: [%s]\n", cJSON_GetErrorPtr());
	}

	struct CMD_Cmd cmd_to_add;

	/* Photo */
	char *b64_encoded_photo = cJSON_GetObjectItem(bodyJson, "photo")->valuestring;
	if (strcmp(b64_encoded_photo, "")) {
		unsigned char *b64_decoded_photo = b64_decode(b64_encoded_photo, strlen(b64_encoded_photo));
		int i;
		for (i=0; i< PHOTO_CLIENT_LEN; i++) {
			cmd_to_add.photo_client[i] = *(b64_decoded_photo + i);
		}
		free(b64_decoded_photo);
	} else {
		cmd_to_add.photo_client[0] = '\0';
	}

	JUTILS_FieldToCharArray(bodyJson, "nom", cmd_to_add.nom_client, NOM_CLIENT_LEN);
	JUTILS_FieldToInt(bodyJson, "noTable", (int*) &cmd_to_add.no_table);
	JUTILS_FieldToCharArray(bodyJson, "date", cmd_to_add.date_cmd, DATE_CMD_LEN);
	JUTILS_FieldToCharArray(bodyJson, "courriel", cmd_to_add.courriel_client, COURRIEL_CLIENT_LEN);
	JUTILS_FieldToCharArray(bodyJson, "heure", cmd_to_add.hre_cmd, HRE_CMD_LEN);
	JUTILS_FieldToInt(bodyJson, "pourEmporter",
			(int*) &cmd_to_add.BOOL_pour_emporter);

	/* Obtenir la liste des commandes */
	cJSON *arrayItem = cJSON_GetObjectItem(bodyJson, "commande");
	int nb_item = cJSON_GetArraySize(arrayItem);
	cmd_to_add.nb_item = nb_item;
	cmd_to_add.BOOL_alerte = 0;
	int i;
	for(i=0; i<nb_item; ++i) {
		struct CMD_Item item_to_add;
		cJSON *item = cJSON_GetArrayItem(arrayItem, i);
		JUTILS_FieldToInt(item, "identificateur", &item_to_add.id_item);
		JUTILS_FieldToInt(item, "nombre", &item_to_add.nb_item);
		JUTILS_FieldToCharArray(item, "options", item_to_add.options, OPTIONS_LENGTH);
		cmd_to_add.items[i] = item_to_add;
	}

	CMD_AjouterCmd(&cmd_to_add);

	//HTTP Response Okay
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 200;
	strcpy(http_response.description, "OK");
	strcpy(http_response.content_type, "text/html; charset=utf-8");

	// Ajout du body de la reponse
	char *JsonReponseChar;
	cJSON *JsonResponse = cJSON_CreateObject();
	char noCommande[3];
	sprintf(noCommande, "%d", cmd_to_add.id_cmd);
	cJSON_AddStringToObject(JsonResponse, "noCommande", noCommande);
	JsonReponseChar = cJSON_Print(JsonResponse);
	strcpy(http_response.body, JsonReponseChar);
	http_response.content_length = strlen(http_response.body);

	cJSON_Delete(bodyJson);
	cJSON_Delete(JsonResponse);

	// Affihcer commande sur console aussi
	CMD_AfficherConsoleCmd(&cmd_to_add);
	return http_response;
}

struct HTTP_Response APP_Alerte(struct HTTP_Request *request) {
	struct HTTP_Response http_response;

	/* On va chercher le numero de la commande */
	char *uri = "/commandes/alerte/:";
	char num_cmd[3];
	int int_num_cmd;
	strcpy(num_cmd, (request->URI + strlen(uri)));
	int_num_cmd = atoi(num_cmd);

	/* On va chercher le texte de la commande */
	cJSON *bodyJson = cJSON_Parse(request->body);
	if (!bodyJson) {
		xil_printf("Error before: [%s]\n", cJSON_GetErrorPtr());
	}

	char alerte_txt[MESSAGE_ALERTE_LEN];
	JUTILS_FieldToCharArray(bodyJson, "message", alerte_txt, MESSAGE_ALERTE_LEN);

	cJSON_Delete(bodyJson);

	/* Appel de la fonction pour ajouter alerte */
	CMD_Alerte(int_num_cmd, alerte_txt);

	//HTTP Response Okay
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 200;
	strcpy(http_response.description, "OK");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	http_response.content_length = 0;

	return http_response;
}

struct HTTP_Response APP_SetCmdServi(struct HTTP_Request *request) {
	struct HTTP_Response http_response;

	/* On va chercher le numero de la commande */
	char *uri = "/commandes/:";
	char num_cmd[3];
	int int_num_cmd;
	strcpy(num_cmd, (request->URI + strlen(uri)));
	int_num_cmd = atoi(num_cmd);

	/* Appel de la fonction pour ajouter alerte */
	CMD_SetCmdServi(int_num_cmd);

	//HTTP Response Okay
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 200;
	strcpy(http_response.description, "OK");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	http_response.content_length = 0;

	return http_response;
}


struct HTTP_Response APP_EnvoyerListeCmd() {

	struct HTTP_Response http_response;

	struct CMD_CmdList *cmdlist = CMD_GetCmdList();
	cJSON *root;
	cJSON *j = cJSON_CreateObject();
	cJSON_AddItemToObject(j, "Liste", root = cJSON_CreateArray());

	cJSON *item;
	struct CMD_Cmd *cmd;

	int i;
	for (i = 0; i < cmdlist->nb_cmd; ++i) {
		cmd = &cmdlist->cmds[i];
		if (cmd->status_cmd == CMD_PRETE_A_SERVIR) {
			item = cJSON_CreateObject();
			cJSON_AddItemToArray(root, item);
			cJSON_AddStringToObject(item, "nom", cmd->nom_client);
			cJSON_AddNumberToObject(item, "noCommande", cmd->id_cmd);
			cJSON_AddNumberToObject(item, "pourEmporter", cmd->BOOL_pour_emporter);
			cJSON_AddNumberToObject(item, "noTable", cmd->no_table);
			//cJSON_AddStringToObject(item, "photo", cmd->photo_client);
			cJSON_AddStringToObject(item, "heure", cmd->hre_cmd);
		}
	}

	char *JsonReponseChar;
	JsonReponseChar = cJSON_Print(j);
	cJSON_Delete(j);

	//Creation de la reponse
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 200;
	strcpy(http_response.description, "OK");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	strcpy(http_response.body, JsonReponseChar);
	http_response.content_length = strlen(http_response.body);

	return http_response;


}

struct HTTP_Response APP_EnvoyerCode(char* bodyChar) {
	struct HTTP_Response http_response;
	int service = 0, client = 0;
	// Fonction qui remplit HTTP_RESPONSE AVEC UN MESSGE QUI DIT QUE CEST OKAY
	/* code pour client : 101*/
	/* code pour service : 201*/

	char fileJsonLu[8196];
	readFichier("debut.txt", fileJsonLu);

	cJSON *bodyJson, *codeJ;
	char modeAEnvoyer[8196];
	bodyJson = cJSON_Parse(bodyChar);
	if (!bodyJson) {
		xil_printf("Error before: [%s]\n", cJSON_GetErrorPtr());
	}
	codeJ = cJSON_GetObjectItem(bodyJson, "code");
	if (strcmp(codeJ->valuestring, APP_codeClient) == 0) {
		client = 101;
		strcpy(http_response.HTTP_ver, "HTTP/1.1");
		http_response.code = 200;
		strcpy(http_response.description, "OK");
		strcpy(http_response.content_type, "application/json");

		JSON_parseDebut(fileJsonLu, "111", modeAEnvoyer);
		strcpy(http_response.body, modeAEnvoyer);
		http_response.content_length = strlen(http_response.body);
	} else if (strcmp(codeJ->valuestring, APP_codeWaiter) == 0) {
		service = 201;
		strcpy(http_response.HTTP_ver, "HTTP/1.1");
		http_response.code = 200;
		strcpy(http_response.description, "OK");
		strcpy(http_response.content_type, "application/json");

		JSON_parseDebut(fileJsonLu, "222", modeAEnvoyer);
		strcpy(http_response.body, modeAEnvoyer);
		http_response.content_length = strlen(http_response.body); /*todo*/
	} else {
		strcpy(http_response.HTTP_ver, "HTTP/1.1");
		http_response.code = 404;
		strcpy(http_response.description, "Not Found");
		http_response.content_length = strlen("HTTP 404 Not Found Error ");
		strcpy(http_response.content_type, "text/html; charset=utf-8");
		strcpy(http_response.body, "HTTP 404 Not Found Error ");
	}

	return http_response;
}

struct HTTP_Response APP_EnvoyerMenu() {
	struct HTTP_Response http_response;
	char fileJsonLu[8196];
	char menu[8196];
	readFichier("menu.txt", fileJsonLu);

	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 200;
	strcpy(http_response.description, "OK");
	strcpy(http_response.content_type, "application/json");
	JSON_parseObtenirMenu(fileJsonLu, menu);
	strcpy(http_response.body, menu);
	http_response.content_length = strlen(http_response.body);
	return http_response;
}


struct AUT_Utilisateur HTTP_SeparerNomDePass(unsigned char* nomPass) {
	char *pass, *nom;
	struct AUT_Utilisateur aut_utilisateur;
	char copyOfnomPass1[sizeof(nomPass)];
	char copyOfnomPass2[sizeof(nomPass)];

	strcpy(copyOfnomPass1, nomPass);
	strcpy(copyOfnomPass2, nomPass);
	pass = strstr(copyOfnomPass1, ":");
	strcpy(aut_utilisateur.modDePasse, pass);
	nom = strtok(copyOfnomPass2, ":");
	strcpy(aut_utilisateur.nomUtilisateur, nom);
	return aut_utilisateur;
}

void APP_SetCodeWaiter(char* codeWaiter)
{
	strcpy(APP_codeWaiter, codeWaiter);
}

void APP_SetCodeClient(char* codeClient)
{
	strcpy(APP_codeClient, codeClient);
}


struct HTTP_Response APP_ActionNonValide(void) {
	struct HTTP_Response http_response;
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 404;
	strcpy(http_response.description, "Not Found");
	http_response.content_length = strlen("HTTP 404 Not Found Error ");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	strcpy(http_response.body, "HTTP 404 Not Found Error ");
	return http_response;
}


struct HTTP_Response APP_ActionNonAuthorise(void) {
	struct HTTP_Response http_response;
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 401;
	strcpy(http_response.description, "Not Found");
	http_response.content_length = strlen("HTTP 401 Unauthorized");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	strcpy(http_response.body, "HTTP 401 Unauthorized");
	return http_response;
}


struct HTTP_Response APP_ActionInexistantCompte(void) {
	struct HTTP_Response http_response;
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 404;
	strcpy(http_response.description, "Not Found");
	http_response.content_length = strlen("HTTP 404 Unauthorized");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	strcpy(http_response.body, "HTTP 404 Unauthorized");
	return http_response;
}


struct HTTP_Response APP_ActionOK(void) {
	struct HTTP_Response http_response;
	strcpy(http_response.HTTP_ver, "HTTP/1.1");
	http_response.code = 200;
	strcpy(http_response.description, "OK");
	http_response.content_length = strlen("HTTP 200 OK");
	strcpy(http_response.content_type, "text/html; charset=utf-8");
	strcpy(http_response.body, "HTTP 200 OK");
	return http_response;
}

