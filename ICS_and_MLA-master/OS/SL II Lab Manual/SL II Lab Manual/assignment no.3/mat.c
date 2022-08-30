#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
void *multiplication(void* z);
int pass=1;
int a[10][10],b[10][10],r1,r2,c1,c2,c[10][10];
void main()
{
	int i,j,k,ele,ch;
	pthread_t t[5];
	printf("Enter no of rows in matrix-1\n");
	scanf("%d",&r1);
	printf("Enter no of columns in matrix-1\n");
	scanf("%d",&c1);
	printf("Enter matrix-1 elements\n");
	for(i=0;i<r1;i++)
		for(j=0;j<c1;j++)
		{
			scanf("%d",&ele);
			a[i][j]=ele;
		}
		printf("\n");
	printf("Enter no of rows in matrix-2\n");
	scanf("%d",&r2);
	printf("Enter no of columns in matrix-2\n");
	scanf("%d",&c2);
	printf("Enter matrix-2 elements\n");
	for(i=0;i<r2;i++)
		for(j=0;j<c2;j++)
		{
			scanf("%d",&ele);
			b[i][j]=ele;
		}
		printf("\n");
	if(r2==c1)
	{
	
		for(i=0;i<r1;i++)
		{
				pthread_create(&t[i],NULL,*multiplication,(void *)i);
		}
		for(i=0;i<r1;i++)
		{
			pthread_join(t[i],NULL);
		}
		
		printf("Matrix multiplication is\n");
		for(i=0;i<r1;i++)
			{
			for(j=0;j<c2;j++)
			{
				printf("%d",c[i][j]);
				printf("\t");
			}
			printf("\n");
			}
	}
	else
	printf("multiplication not possible\n");
	pthread_exit(NULL);
}
void *multiplication(void* z)
{
	int k,j;
	int i= (int)z;
	for(j=0;j<c2;j++)
	{	c[i][j]=0;
		for(k=0;k<c1;k++)
		{
			printf("\n Thread number %d under execution",i);
			c[i][j] = c[i][j] + a[i][k] * b[k][j];
			printf("\n");
			sleep(1);
		}
	}
	//printf("Row %d output\n",pass++);
	for(j=0;j<c2;j++)
			{
				
				printf("%d",c[i][j]);
				printf("\t");
			}
			printf("\n");
	
}

/*ssl@ssl-ThinkCentre-M60e:~/Desktop$ ./a.out
Enter no of rows in matrix-1
2
Enter no of columns in matrix-1
3
Enter matrix-1 elements
1 2 3 4 5 6

Enter no of rows in matrix-2
3
Enter no of columns in matrix-2
3
Enter matrix-2 elements
9 8 7 6 5 4 3 2 1


 Thread number 0 under execution

 Thread number 1 under execution

 Thread number 0 under execution

 Thread number 1 under execution

 Thread number 0 under execution

 Thread number 1 under execution

 Thread number 0 under execution

 Thread number 1 under execution

 Thread number 0 under execution
 Thread number 1 under execution


 Thread number 0 under execution
 Thread number 1 under execution


 Thread number 0 under execution
 Thread number 1 under execution


 Thread number 0 under execution
 Thread number 1 under execution


 Thread number 0 under execution

 Thread number 1 under execution
30	24	18	
84	69	54	
Matrix multiplication is
30	24	18	
84	69	54	
ssl@ssl-ThinkCentre-M60e:~/Desktop$ */

