#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#define FIFO_NAME1 "comm_pipe1"
#define FIFO_NAME2 "comm_pipe2"

int main()
{
    char s1[300],s2[300];
    int num, fd1,fd2,byt;
	//printf("producer");	
    mknod(FIFO_NAME1, S_IFIFO | 0666, 0);
    mknod(FIFO_NAME2, S_IFIFO | 0666, 0);
    printf("waiting for consumer...\n");
    fd1 = open(FIFO_NAME1, O_WRONLY);
    fd2 = open(FIFO_NAME2, O_RDONLY);
    printf("got a consumer--type some stuff\n");
gets(s1);	
 	if ((num = write(fd1, s1, strlen(s1))) == -1)
        perror("write");
    else
    {
        printf("speak: wrote %d bytes to file1\n", num);
       
        byt=read(fd2, s2, 300);
        s2[byt]='\0';
        printf(" %s\n",s2);
        
	}
    
    return 0;
}
/*********************output*********************************/
/*
info-14@info14-ThinkCentre-M60e:~$ gcc p1.c

info-14@info14-ThinkCentre-M60e:~$ ./a.out
waiting for consumer...
got a consumer--type some stuff
Delhi is Capital of India. Central government is in Delhi.
speak: wrote 58 bytes to file1
 for the given sentence the word count is 10
 volwel cnt is18 
 charachter count is47 
 lines are2
*/

