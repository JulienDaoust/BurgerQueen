// Ce qu'on recoit du client

#ifndef _HTTP_REQUEST_H_
#define _HTTP_REQUEST_H_


struct HTTP_Request {
	char methode[8]; // GET, POST, HEAD ...
	char URI[30]; // /debut, /obtenirmenu, /commande ...
	char HTTP_ver[9];// = "HTTP/1.1";
	char body[20000]; // JSON ...
	char authorisation[500]; // nom:passwd
};


#endif
