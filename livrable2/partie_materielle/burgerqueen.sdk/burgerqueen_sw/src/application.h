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


/*********************************************************************************************
 * Cette fonction serialiser la reponse à la requete http reçue
 * param <struct HTTP_Response* http_resp> : la requete http deserialisée
 * param <char* response> : la reponse à la requete
 * Return value: void
 *********************************************************************************************/
void HTTP_Response_Serialiser(struct HTTP_Response* http_resp, char* response);

/*********************************************************************************************
 * Cette fonction serialiser la reponse à la requete http reçue
 * param <char* bodyChar> : le corps de la requete reçue qui represente le json
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_AjoutCmd(char* bodyChar);

/**
 * Retourne le code qui dit le mode de l'application Android
 */
struct HTTP_Response APP_EnvoyerCode(char* bodyChar);

/*********************************************************************************************
 * Cette fonction renvoie un code représentant le mode client ou service
 * param <char* bodyChar> : le corps de la requete reçue qui represente le json
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_EnvoyerListeCmd(void);

/*********************************************************************************************
 * Cette fonction renvoie le menu
 * param <char* bodyChar> : le corps de la requete reçue qui represente le json
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_EnvoyerMenu();

struct HTTP_Response APP_EnvoyerListeDesCommandes(char* bodyChar);

struct HTTP_Response APP_Alerte(struct HTTP_Request *request);

struct HTTP_Response APP_SetCmdServi(struct HTTP_Request *request);

/*********************************************************************************************
 * Cette fonction renvoie une struct qui contient le nom d'utilisateur et le mot de passe
 * param <unsigned char* nomPass> : le message contenant le nom et le mot de passe
 * Return value <struct AUT_Utilisateur> : un utilisateur
 *********************************************************************************************/
struct AUT_Utilisateur HTTP_SeparerNomDePass(unsigned char* nomPass);

/*********************************************************************************************
 * Cette fonction valide l'authorisation de l'utilisateur
 * param <char *authorisation> : nom d'utilisateur et mot de passe en format base64
 * Return value <int> : 1 si l'utilisateur est authorisé, 0 sinon
 *********************************************************************************************/
int APP_validerAuthorization(char *authorisation);

int APP_ValiderExistanceCompte(char *authorisation);

/*********************************************************************************************
 * Cette fonction permet de changer le mode de passe d'un utilisateur
 * param <char *bodyChar> : le body de la requête qui contient le nouveau mot de passe encodé en base64
 * param <char *authorisation> : nom d'utilisateur et mot de passe encodé en base64
 * Return value <int> : 1 si l'utilisateur est authorisé, 0 sinon
 *********************************************************************************************/
struct HTTP_Response APP_ChangerMotDePasse(char* bodyChar, char *authorisation);

/*********************************************************************************************
 * Cette fonction change le code waiter
 * param <char*> : nouveau code waiteur
 * Return value <void> : void
 *********************************************************************************************/
void APP_SetCodeWaiter(char* codeWaiter);

/*********************************************************************************************
 * Cette fonction change le code client
 * param <char*> : nouveau code client
 * Return value <void> : void
 *********************************************************************************************/
void APP_SetCodeClient(char* codeClient);

/*********************************************************************************************
 * Cette fonction renvoie la reponse 401 en cas d'erreur
 * param <void> : void
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_ActionInexistantCompte(void);

/*********************************************************************************************
 * Cette fonction renvoie la reponse 404 en cas d'erreur
 * param <void> : void
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_ActionNonValide(void);

/*********************************************************************************************
 * Cette fonction renvoie la reponse 401 en cas d'erreur
 * param <void> : void
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_ActionNonAuthorise(void);

/*********************************************************************************************
 * Cette fonction renvoie OK
 * param <void> : void
 * Return value <struct HTTP_Response> : la réponse à la requête reçue
 *********************************************************************************************/
struct HTTP_Response APP_ActionOK(void);


static struct AUT_UtilisateurList APP_ListDesUtilisateurs;
static char APP_codeClient[100] = {"101"};
static char APP_codeWaiter[100] = {"201"};

#endif /* APPLICATION_H_ */
