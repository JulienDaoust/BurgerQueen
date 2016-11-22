/*
 * JUtils.h
 *
 *  Created on: Nov 10, 2015
 *      Author: sagag2
 */

#ifndef JUTILS_H_
#define JUTILS_H_

void JUTILS_FieldToCharArray(cJSON *bodyJson, char *fieldname, char *structfield, int structfield_len);
void JUTILS_FieldToInt(cJSON *bodyJson, char *fieldname, int *structfield);

#endif /* JUTILS_H_ */
