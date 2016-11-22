/*
 * cUtils.cpp
 *
 *  Created on: Nov 10, 2015
 *      Author: sagag2
 */

#include <string.h>
#include "cJSON.h"
#include "JUtils.h"

void JUTILS_FieldToCharArray(cJSON *bodyJson, char *fieldname, char *structfield, int structfield_len)
{
	strncpy(structfield, (cJSON_GetObjectItem(bodyJson, fieldname))->valuestring, structfield_len-1);
	*(structfield +  structfield_len - 1) = '\0';
}

void JUTILS_FieldToInt(cJSON *bodyJson, char *fieldname, int *structfield)
{
	*structfield = cJSON_GetObjectItem(bodyJson, fieldname)->valueint;
}
