/*
 * parserJson.h
 *
 *  Created on: 2015-11-10
 *      Author: mazola
 */

#ifndef PARSERJSON_H_
#define PARSERJSON_H_
#include "cJSON.h"

void JSON_parseDebut(char* body, char* code, char* debut);
void JSON_parseObtenirMenu(char* body, char *menu);

#endif /* PARSERJSON_H_ */
