/*
 * nomPass.c
 *
 *  Created on: 2015-11-11
 *      Author: mazola
 */
#include "utilisateur.h"
#include "string.h"
#include "carteSd.h"

struct AUT_UtilisateurList aut_UtilisateurList;

void AUT_Init() {
	aut_UtilisateurList.nb_utilisateur = 0;
}


struct AUT_UtilisateurList AUT_ChargerListeUtilisateurAPartirCarteSD() {
	struct AUT_UtilisateurList aut_UtilisateurList;
	char *token = NULL;
	char fichierLu[8196];
	char copyfichierLu[8196];
	readFichier("ls.txt", fichierLu);  // On peut lire la liste des utilisateurs à partir de la carte sd
	strcpy(copyfichierLu, fichierLu);
	int nombreUtilisateur = 0;
	token = strtok((char*) fichierLu, ":");
	strcpy(
			aut_UtilisateurList.utilisateurslst[nombreUtilisateur].nomUtilisateur,
			token);
	token = strtok(NULL, ";");

	strcpy(aut_UtilisateurList.utilisateurslst[nombreUtilisateur].modDePasse,
			token);
	nombreUtilisateur += 1;
	while (1) {
		token = strtok(NULL, ":");
		if (strcmp(token, "!") != 0) {
			strcpy(
					aut_UtilisateurList.utilisateurslst[nombreUtilisateur].nomUtilisateur,
					token);
			token = strtok(NULL, ";");

			strcpy(
					aut_UtilisateurList.utilisateurslst[nombreUtilisateur].modDePasse,
					token);
			nombreUtilisateur += 1;
		} else
			break;

	}
	aut_UtilisateurList.nb_utilisateur = nombreUtilisateur;
	return aut_UtilisateurList;
}

/*
 * Cette fonction retoune la liste des utilisateurs
 */
struct AUT_UtilisateurList* AUT_GetUtilisateurList() {
	return &aut_UtilisateurList;
}

UINT AUT_ValiderMotDePasse(struct AUT_Utilisateur* utilisateur) {
	UINT valide = 0;
	int i;
	for (i = 0; i < aut_UtilisateurList.nb_utilisateur; i++) {
		if ((strcmp(aut_UtilisateurList.utilisateurslst[i].nomUtilisateur,
				utilisateur->nomUtilisateur) == 0)
				&& (strcmp(aut_UtilisateurList.utilisateurslst[i].modDePasse,
						utilisateur->modDePasse) == 0))
			valide = 1;
	}
	return valide;
}
