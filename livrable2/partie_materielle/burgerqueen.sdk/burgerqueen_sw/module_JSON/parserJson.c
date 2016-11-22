/*
 * parserJson.c
 *
 *  Created on: 2015-11-10
 *      Author: mazola
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "parserJson.h"
void JSON_parseDebut(char* body, char* code, char* debut) {
	cJSON *json;
	json = cJSON_Parse(body);
	cJSON_DeleteItemFromObject(json, "mode");
	cJSON_AddStringToObject(json, "mode", code);
	char *txt = cJSON_Print(json);
	strcpy(debut, txt);
	cJSON_Delete(json);
	free(txt);
}

void JSON_parseObtenirMenu(char* body, char *menu) {
	cJSON *json;
	json = cJSON_Parse(body);
	char *txt = cJSON_Print(json);
	strcpy(menu, txt);
	cJSON_Delete(json);
	free(txt);
}
