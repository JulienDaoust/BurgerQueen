/*
 * clavier.h
 *
 *  Created on: 2015-11-19
 *      Author: Najib
 */

#ifndef CLAVIER_H_
#define CLAVIER_H_

/* configuration du GPIO  */
int KEY_configGPIOs();

/* Fonction qui lit les caracters saisies du client dans le buffer UART*/
void KEY_lireCodeClient();

/* Fonction qui lit les caracters saisies du waiter dans le buffer UART*/
void KEY_lireCodeWaiter();

/* boucle principale qui verifie l etat des boutons*/
void KEY_loop_button();

#endif /* CLAVIER_H_ */
