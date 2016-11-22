#include <stdio.h>
#include <string.h>
/* Les reponses a envoyer au client*/
char reponse_test1[] =
		"HTTP/1.1 200 OK\n"
				"Content-Type: text/html; charset=utf-8\n"
				"Content-Length: 175\n"
				"\n"
		"<html><head><style>body {background-color: linen;}h1{color: maroon;margin-left: 40px;}</style><title>TEST1 - ZedboardKingz</title></head><body><h1>Test 1 OK</h1></body></html>";

char reponse_test2[] =
		"HTTP/1.1 200 OK\n"
				"Content-Type: text/html; charset=utf-8\n"
				"Content-Length: 205\n"
				"\n"
		"<html><head><style>body {background-color: linen;}h1{color: maroon;margin-left: 40px;}</style><title>TEST2 - ZedboardKingz</title></head><body><h1><a href=\"http://www.polymtl.ca\">Poly</a></h1></body></html>";

char reponse_test3_1[] = "HTTP/1.1 200 OK\n"
		"Content-Type: image/bmp\n"
		"Content-Length: 3089620\n"
		"Connection: close\n"
		"\n";

char reponse_failed[] =
				"HTTP/1.1 404 Not Found\n"
				"Content-Type: text/html; charset=utf-8\n"
				"Content-Length: 106\n"
				"\n"
				"<html><head><title>HTTP 404 Not Found Error </title></head><body><h1>HTTP 404 Not Found Error</h1> </html>";

