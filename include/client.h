#ifndef CLIENT_H
#define CLIENT_H

extern int status;
extern struct addrinfo hints;
extern struct addrinfo *servinfo;  // points to results

void client_initialize(void);

#endif