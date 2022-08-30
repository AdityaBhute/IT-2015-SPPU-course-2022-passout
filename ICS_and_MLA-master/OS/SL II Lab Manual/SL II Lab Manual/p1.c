#include<stdio.h>
#include<fcntl.h>
#include<sys/stat.h>
#include<unistd.h>
#include<string.h>
#define MAX_BUF 80
int main(){
	int fd,i = 0;
	char *myfifo="myfifo";
	char str[MAX_BUF]="";
	char ch;
	mkfifo(myfifo,0666);
	printf("\nEnter a string : ");
	fgets(str,MAX_BUF,stdin);
	fd=open(myfifo,O_WRONLY);
	write(fd,str,strlen(str));
	close(fd);
	unlink(myfifo);
	return 0;
	}


