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
	struct AUT_Utilisateur utilisateurslst[MAX_UTILISATEUR];
	UINT nb_utilisateur;
};

/*******************************************************************************************************************
 * FONCTION TEST
 ******************************************************************************************************************/

/*
 * Cette fonction initialise la liste des utilisateurs
 */
void AUT_Init();

/*******************************************************************************************************************
 * INTERFACE POUR INTERAGIR AVEC LES UTILISATEURS
 ******************************************************************************************************************/

/*********************************************************************************************
 * Cette fonction lit le fichier dont le contenu est la liste des utilisateurs
 * param <void> : void
 * Return value <struct AUT_UtilisateurList> : liste des utilisateurs
 *********************************************************************************************/
struct AUT_UtilisateurList AUT_ChargerListeUtilisateurAPartirCarteSD();

struct AUT_UtilisateurList* AUT_GetNomPassList();

void AUT_AjouterUtilisateur(struct AUT_Utilisateur* utilisateur);

/*
 * Cette fonction valide le mot de passe d'un utilisateur
 * Return value: 0 si le mot de passe n'est pas valide
 *               1 si le mot de passe est valide
 */
UINT AUT_ValiderMotDePasse(struct AUT_Utilisateur* utilisateur);


#endif /* AUT_UTILISATEUR_H_ */
