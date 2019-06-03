#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

#include <stdio.h>
#include <stdlib.h>

void send_some_char(int sockfd, char ch)
{
	// 发送几次字符，然后接收响应
	for (int i = 0; i < 5; ++i)
    {
        write(sockfd, &ch, 1);
        read(sockfd, &ch, 1);
        printf("char from server = %c\n", ch);

        sleep(1);
    }
}

int main()
{
	int sockfd;
	socklen_t len;
	struct sockaddr_in address;
	int result;
	char ch = 'A';

	// Create a socket for the client
	sockfd = socket(AF_INET, SOCK_STREAM, 0);

	// Name the socket as agreed with the server
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = inet_addr("127.0.0.1");
	address.sin_port = htons(6666);
	len = sizeof(address);

	// Connect your socket to the server's socket
	result = connect(sockfd, (struct sockaddr*)&address, len);
	if (result == -1) {
		perror("oops: client");
		exit(1);
	}

	// You can now read and write via sockfd
	send_some_char(sockfd, ch);
	
	close(sockfd);

	exit(0);
}
