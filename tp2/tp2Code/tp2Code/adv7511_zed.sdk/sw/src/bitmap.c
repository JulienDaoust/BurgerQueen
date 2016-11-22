#include "bitmap.h"

typedef struct ColorTable {
	UCHAR R;
	UCHAR G;
	UCHAR B;
} colortable;

UINT readValue(const UCHAR* fileBuf, /* buffer du fichier bmp */
const UINT offset, /* Place ou on veut commencer la lecture */
const UINT width /* Largeur en bytes du champ a lire */
) {
	UINT result = 0;
	UINT i;

	for (i = 0; i < width; i++) {
		result += fileBuf[i + offset] << i * 8;
	}

	return result;
}

UINT bmp_nb_RLE_pixel(UCHAR *buf /* buffer du fichier bmp */
) {
	if (buf == NULL)
		return 0;

	UINT sizeBmpFile = readValue(buf, 2, 4);
	UINT sizeHeader = readValue(buf, 10, 4);

	return (sizeBmpFile - sizeHeader) / 2;
}

void bmp_to_crgb(const UCHAR *buf, /* buffer du fichier bmp */
UINT nbRLEpixel, /* Nb de paire (counter, pixel) */
UINT32 *crgb /* (counter,R,G,B) extrait de buf */
) {

	const UINT ctSize = readValue(buf, 46, 4); /* Grosseur colortable */
	const UINT ctOff = 54; /* Offset colortable dans buf */
	UINT32 crgb_inv[nbRLEpixel];
	colortable ct[ctSize];

	/* Remplissage colortable.
	 * On fait +4 car on retrouve BGRA en memoire
	 */
	UINT i;

	for (i = 0; i < ctSize*4; i += 4) {
		ct[i / 4].B = buf[ctOff + i];
		ct[i / 4].G = buf[ctOff + i + 1];
		ct[i / 4].R = buf[ctOff + i + 2];
	}

	int w;
	for(w=171; w<173; w++) {
		xil_printf("%x ",ct[w].B);
		xil_printf("%x ",ct[w].G);
		xil_printf("%x ",ct[w].R);
		xil_printf("\n");
	}

	const UINT dataOff = readValue(buf, 10, 4); /* Offset du data de l'image */

	/* Remplissage de crgb_inv */
	for (i = 0; i < nbRLEpixel; i++) {
		UCHAR c = buf[dataOff + i * 2]; /* nb pixel répété */
		UCHAR idx = buf[dataOff + i * 2 + 1]; /* Index de la couleur dans colortable */

		crgb_inv[i] = (c << 24) + ((ct[idx].R) << 16) + ((ct[idx].G) << 8)
				+ (ct[idx].B);
	}

	/* On inverse le array de l'image */

	UINT j = nbRLEpixel - 1;
	i = 0;
	while (i < nbRLEpixel) {
		crgb[i] = crgb_inv[j];
		--j;
		++i;

	}

}

///* Run-Length Encoding */
//void rgb_RLE(UINT32 *crgb, UINT crgbSize, const UCHAR *buf, /* buffer du fichier bmp */
//UINT nbRLEpixel /* Nb de paire (counter, pixel) */) {
//	const UINT ctSize = readValue(buf, 46, 4); /* Grosseur colortable */
//	const UINT ctOff = 54; /* Offset colortable dans buf */
//
//	colortable ct[ctSize];
//
//	/* Remplissage colortable.
//	 * On fait +4 car on retrouve BGRA en memoire
//	 */
//	UINT i;
//	for (i = 0; i < ctSize; i += 4) {
//		ct[i / 4].B = buf[ctOff + i];
//		ct[i / 4].G = buf[ctOff + i + 1];
//		ct[i / 4].R = buf[ctOff + i + 2];
//	}
//
//	const UINT dataOff = readValue(buf, 10, 4); /* Offset du data de l'image */
//	UINT j = 0;
//	UCHAR count = 0;
//	for (i = 0; i < ctSize - 1; i++) {
////		if ((ct[i].B == ct[i + 1].B) && (ct[i].R == ct[i + 1].R)
////				&& (ct[i].G == ct[i + 1].G)) {
////			++count;
////		} else {
////					crgb[j] = 	(count << 24)
////                        		+ (ct[i].R << 16)
////                        		+ (ct[i].G << 8)
////                        		+ (ct[i].B);
//			crgb[j] = (0 << 24) + (1 << 16) + (ct[i].R << 8)
//					+ (ct[i].R);
//			++j;
//			crgb[j] = (ct[i].G << 24) + (ct[i].G << 16) + (ct[i].B << 8)
//					+ (ct[i].B);
//			++j;
//			count = 0;
////		}
//	}
//
//}
