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
    char s[300],vowel[20],send[50];
    int num, fd1,fd2,sig,k=0,i,wordcnt=1,charcnt=0,linecnt=0;
	FILE *fp;
	 
    mknod(FIFO_NAME1, S_IFIFO | 0666, 0);
    mknod(FIFO_NAME2, S_IFIFO | 0666, 0);
    printf("waiting for producers...\n");
    fd1 = open(FIFO_NAME1, O_RDONLY);
    fd2 = open(FIFO_NAME2, O_WRONLY);
    printf("got a producer\n");

    
        if ((num = read(fd1, s, 300)) == -1)
            perror("read");
        else {
            s[num] = '\0';
            printf("tick: read %d bytes: \"%s\"\n", num, s);
            k=0;
            vowel[0]='\0';
            wordcnt=1;
            for(i=0;i<num;i++)
            {
            	if((s[i]=='a'||s[i]=='e'||s[i]=='i'||s[i]=='o'||s[i]=='u'))
            	{
		    	vowel[k]=s[i];
		    	k++;
            	}
            	if(s[i]==' '&&s[i+1]!=' ')
            	{
            		wordcnt++;
            	}
            	if(s[i]=='.'&&(s[i+1]==' '||s[i+1]=='\0'))
            	linecnt++;
            	else if(s[i]!='.'&&s[i]!=' ')
            	charcnt++;
            	
            }
            vowel[k]='\0';
            sprintf(send,"for the given sentence the word count is %d\n volwel cnt is%d \n charachter count is%d \n lines are%d\n",wordcnt,k,charcnt,linecnt);
			fprintf(fp,"%s",send);
            
           // strcat(send,vowel); 
            if((sig=write(fd2,send,strlen(send)))!=-1)
            printf("\nwriten successfully to file 2");
            else
            printf("\nerror in writing to file2");
        }
  

    return 0;
}
/*************************output*****************************************/
/*
info-14@info14-ThinkCentre-M60e:~$ gcc c1.c
info-14@info14-ThinkCentre-M60e:~$ ./a.out
waiting for producers...
got a producer
tick: read 58 bytes: "Delhi is Capital of India. Central government is in Delhi."

writen successfully to file 2
*/
