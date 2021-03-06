#include <stdio.h>
#include <netdb.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/un.h>
#include <stdlib.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>

#define LISTEN_BACKLOG 50
#define BUFFER_SIZE 7

int main(int argc, char *argv[])
{
    char *ip_address = argv[1];
    // asci to int
    int port = atoi(argv[2]);
    // tcp socket for server & client
    int sock;
    struct sockaddr_in server_addr;

    printf("Starting alrien simple key value store...\n");
    printf("IP ADDRESS: %s\n", ip_address);
    printf("PORT: %d\n", port);
    
    // setup socket
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock == -1) {
        printf("Error opening socket: -1\n");
        exit(1);
    }
    server_addr.sin_port = htons(port);
    inet_aton(ip_address, &server_addr.sin_addr);
    server_addr.sin_family = AF_INET;
    
    // bind socket to port & ip_address
    if (bind(sock, (struct sockaddr*)&server_addr, sizeof(server_addr)) == -1) {
        printf("Error binding socket to port & ip_address: %d, %s\n", port, ip_address);
        exit(1);
    }

    // list on port & ip_address
    if (listen(sock, LISTEN_BACKLOG) == -1) { 
        printf("Error listing on port & ip_address: %d, %s\n", port, ip_address);
    }

    while(1) {
        printf("Checking if connections are coming in ...\n");
        
        int session, datasize, r, w;
        char buffer[BUFFER_SIZE];
        struct sockaddr_in client_addr;
        socklen_t client_addr_size;
        
        //put buffer full of zero's
        bzero(buffer,BUFFER_SIZE);
        
        client_addr_size = sizeof(struct sockaddr_in);
        session = accept(sock, (struct sockaddr*)&client_addr, &client_addr_size);      
        if (session == -1) {
            printf("Connection failed or no connections!");
            continue;
        }
       
        printf("Accepting connection from %s:%d\n", inet_ntoa(client_addr.sin_addr),ntohs(client_addr.sin_port));
 
        //read first 7 chars from string

        read(session,&datasize,sizeof(datasize));
        r = read(session,buffer,BUFFER_SIZE);
        if (r < 0) { 
            printf("Failed to read from socket!");
            continue;
        }
        
        //display the message from client
        printf("Here is the message: %s, %d\n",buffer,ntohs(datasize));

        //write to client
        w = write(session,"I got your message",18);
        if (w < 0) {
            printf("Failed to write to socket!");
            continue;
        }
      
        //close session socket
        close(session);
    }

    //close server socket
    close(sock);

    return 0;
}
