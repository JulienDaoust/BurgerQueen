/*
 * application.h
 *
 *  Created on: Nov 3, 2015
 *      Author: sagag2
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_

#include "http_requests.h"
#include "http_responses.h"
#include "utilisateur.h"
#include "base64.h"

/*
 *  Point d'entree Requêtes HTTP.
 *
 *  - Désérialisation de la requete dans une structure HTTP_Request
 *  - Déterminer l'action a prendre (type ressource, etc...)
 *  - Parser le payload dans vers un objet JSON
 *  - SWITCH CASE: Selon l'action déterminé plus haut, on appel la bonne fonction de traitement
 *  - Création d'une réponse HTTP (HTTP_Response)
 *  - Séréalisation de la réponse HTTP
 *  - Envoi réponse
 *
 */
void APP_RequestProcessing(char* request, char* response);


/*******************************************************************************************************************
 * FONCTIONS QUI APPELLENT LES DIFFÉRENTES INTERFACES
 ******************************************************************************************************************/

/* Methode transforme le payload issue d'une requete HTTP en struct
 * HTTP_Request. Cette struct sera utilisé pour déduire la ressource
 * auquel on veut accéder (la ressource peut contenir un fichier JSON)
 */
struct HTTP_Request HTTP_Response_DeSerialiser( char* payload);


/* Methode transforme la structure en char*
 * La valeur de retour s'en va directement a TCP write...
 */
void HTTP_Response_Serialiser(struct HTTP_Response* http_resp, char* response);


struct HTTP_Response APP_AjoutCmd(char* bodyChar);
struct HTTP_Response APP_EnvoyerCode(char* bodyChar);
struct HTTP_Response APP_EnvoyerListeCmd(void);
struct HTTP_Response APP_EnvoyerMenu();
struct HTTP_Response APP_EnvoyerListeDesCommandes(char* bodyChar);
struct HTTP_Response APP_EnvoyerListeDesCommandes(char* bodyChar);
struct HTTP_Response APP_Alerte(struct HTTP_Request *request);
struct HTTP_Response APP_SetCmdServi(struct HTTP_Request *request);
struct AUT_Utilisateur HTTP_SeparerNomDePass(unsigned char* nomPass);

struct HTTP_Response APP_ActionNonValide(void);
struct HTTP_Response APP_ActionNonAutorise(void);


#endif /* APPLICATION_H_ */
