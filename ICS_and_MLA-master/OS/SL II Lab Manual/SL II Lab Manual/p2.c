#include<stdio.h>
#include<fcntl.h>
#include<sys/stat.h>
#include<unistd.h>
#include<string.h>
#define MAX_BUF 1024
int main(){
	int fd,k,i, c=0,c1=0;
	char *myfifo="myfifo";
	char str[MAX_BUF]="";
	mkfifo(myfifo,0666);
	fd=open(myfifo,O_RDONLY);
	read(fd,str,sizeof(str));
	printf("\nReceived = %s\n",str);
	k=strlen(str)-1;
               printf("length = %d\n",k);
	for(i=0;str[i]!='\0';i++)
		if(str[i]==' ')
       			c++;
	for(i=0;str[i]!='\0';i++)
		if(str[i]=='\n')
			c1++;
	printf("\n\nTotal lines are %d\n",c1);
	printf("\n\nTotal words are %d\n ",c+1);
	close(fd);
	return 0; }
