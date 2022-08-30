#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>

void main()
{
	int fd1[2],fd2[2],n;
	FILE *fp,*fp1;
	char ch[30],filen[30]="text.txt";
	char buf1[50],buf2[50];
	pid_t cpid;
	pipe(fd1);
	pipe(fd2);
	
	cpid=fork();
	printf("%d",cpid);
	if(cpid==-1)
	{
		perror("fork");
	}
	if(cpid>0)
	{
		close(fd1[0]);
		printf("\n\tParent process writing data data..\n");
		write(fd1[1],filen,strlen(filen));
		close(fd2[1]);
		n=read(fd2[0],buf1,50);
		buf1[n]='\0';
		printf("\n\tReply from child: %s\n",buf1);

		//sleep(2);
  	}	
	else
	{
		close(fd1[1]);
		printf("\n\tChild process receiving data..\n");
		n=read(fd1[0],buf2,sizeof(buf2));
		buf2[n]='\0';
		printf("\n\tData received from parent through pipe: %s\n",buf2);
		fp=fopen(buf2,"r");
		
		while(fgets(ch,30,fp))
		{
						//fprintf(fp1,"%s",ch);
		}
		
		//sleep(3);
		//fclose(fp1);
		fclose(fp);
		close(fd2[0]);
		write(fd2[1],ch,sizeof(ch));
		printf("\n\tReply sent.\n");
	}
}
/*************************output******************************/
/*
info-14@info14-ThinkCentre-M60e:~$ gcc pr.c
info-14@info14-ThinkCentre-M60e:~$ ./a.out
8092
	Parent process writing data data..
0
	Child process receiving data..

	Data received from parent through pipe: text.txt

	Reply sent.

	Reply from child: Welcome to pccoe.
*/



