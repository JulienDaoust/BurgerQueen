/*
 * http_nomPass.h
 *
 *  Created on: 2015-11-11
 *      Author: mazola
 */

#ifndef AUT_UTILISATEUR_H_
#define AUT_UTILISATEUR_H_

#define MAX_UTILISATEUR 100
typedef unsigned int UINT;
typedef unsigned char UCHAR;

struct AUT_Utilisateur {
	char nomUtilisateur[30]; // nom d'utilisateur decodé
	char modDePasse[30]; 	 // mot de passe decodé
};
struct AUT_UtilisateurList {
	struct AUT_Utilisateur utilisateurs[MAX_UTILISATEUR];
	UINT nb_utilisateur;
};

/*******************************************************************************************************************
 * FONCTION TEST
 ******************************************************************************************************************/
void AUT_Init();
/*******************************************************************************************************************
 * INTERFACE POUR INTERAGIR AVEC LES UTILISATEURS
 ******************************************************************************************************************/
struct AUT_UtilisateurList* AUT_GetNomPassList();
void AUT_AjouterUtilisateur(struct AUT_Utilisateur* utilisateur);
UINT AUT_ValiderMotDePasse(struct AUT_Utilisateur* utilisateur);


#endif /* AUT_UTILISATEUR_H_ */
