#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>

#include "client.h"
#include "server.h"

int main() {
    // initialize server
    server_initialize();

    // initialize client
    client_initialize();

    return 0;
}
