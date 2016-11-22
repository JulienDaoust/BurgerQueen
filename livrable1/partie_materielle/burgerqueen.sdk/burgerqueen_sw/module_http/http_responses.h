// Ce qu'on envoit au client

#ifndef _HTTP_RESPONSE_H_
#define _HTTP_RESPONSE_H_

struct HTTP_Response {
	char HTTP_ver[9];// = "HTTP/1.1";
	int code;
	char description[10]; // OK, Continue ...
	char content_type[24];
	int content_length; // Longueur du
	char body[20000]; // JSON ...
};

#endif



