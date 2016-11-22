/*
 * nomPass.c
 *
 *  Created on: 2015-11-11
 *      Author: mazola
 */
#include "utilisateur.h"
#include "string.h"

struct AUT_UtilisateurList aut_UtilisateurList;
/*
 * Cette fonction initialise la liste des utilisateurs
 */
void AUT_Init()
{
	aut_UtilisateurList.nb_utilisateur = 0;
}
/*
 * Cette fonction retoune la liste des utilisateurs
 */
struct AUT_UtilisateurList* AUT_GetUtilisateurList()
{
	return &aut_UtilisateurList;
}
/*
 * Cette fonction valide le mot de passe d'un utilisateur
 * Return value: 0 si le mot de passe n'est pas valide
 *               1 si le mot de passe est valide
 */
UINT AUT_ValiderMotDePasse(struct AUT_Utilisateur* utilisateur)
{
	UINT valide = 0;
	int i;
	for (i = 0; i < aut_UtilisateurList.nb_utilisateur; i++)
	{
		if((strcmp(aut_UtilisateurList.utilisateurs[i].nomUtilisateur, utilisateur->nomUtilisateur) == 0) &&
		   (strcmp(aut_UtilisateurList.utilisateurs[i].modDePasse, utilisateur->modDePasse) == 0))
			valide = 1;
	}
	return valide;
}
