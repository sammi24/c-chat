#ifndef SERVER_H
#define SERVER_H

extern int status;
extern struct addrinfo hints;
extern struct addrinfo *servinfo;  // points to results

void server_initialize(void);

#endif