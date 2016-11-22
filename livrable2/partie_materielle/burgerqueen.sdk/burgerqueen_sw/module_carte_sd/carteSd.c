/*
 * carteSd.c
 *
 *  Created on: 2015-11-10
 *      Author: mazola
 */
#include "carteSd.h"

void readFichier(char* pathFile, char* contenuFichier)
{
	FRESULT fr;
	FATFS FatFs;
	FIL fil;
	UINT bytesRead;

	fr = f_mount(&FatFs, "", 0);
	if(fr) goto err_1;

	fr = f_open(&fil, pathFile, FA_READ);
	if(fr) goto err_2;

	f_read(&fil, contenuFichier, fil.fsize, &bytesRead);



		f_close(&fil);
	err_2:
		f_mount(NULL, "", 0);
	err_1:
	return;
}
