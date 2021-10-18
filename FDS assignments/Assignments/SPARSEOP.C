
//Assignment - 8                                                             -
#include<stdio.h>
#include<conio.h>
void Read(int a[10][10],int row,int col);
void Sparse(int a[10][10],int row,int col);
void Transpose(int a[10][10],int row,int col);
void Addition(int a1[10][10],int a2[10][10],int row1,int col1);
void Multiplication(int a1[10][10], int a2[10][10],int row1,int col1,int row2,int col2);
void main()
{
	int a1[10][10]={0},row1,col1;
	int a2[10][10]={0},row2,col2;
	//int a3[10][10]={0},row3,col3;
	int ch;
	clrscr();
	printf("enter the no.of rows & columns of first matrix\n");
	scanf("%d %d",&row1,&col1);
	printf("enter the matrix elements of first matrix\n");
	Read(a1,row1,col1);
	Sparse(a1,row1,col1);
	printf("enter the no.of rows & columns of second matrix\n");
	scanf("%d %d",&row2,&col2);
	printf("enter the matrix elements of second matrix\n");
	Read(a2,row2,col2);
	Sparse(a2,row2,col2);
	printf("1. Transpose of first sparse matrix\n");
	printf("2. Transpose of second sparse matrix\n");
	printf("3. Addition of two sparse matrices\n");
	printf("4. Multiplication of sparse matrices\n");
	printf("5. Exit\n");
	do
	{
		printf("Enter your choice\n");
		scanf("%d",&ch);
		switch(ch)
		{
		case 1: Transpose(a1,row1,col1);
			break;
		case 2: Transpose(a2,row2,col2);
			break;
		case 3: Addition(a1,a2,row1,col1);
			break;
		case 4: Multiplication(a1,a2,row1,col1,row2,col2);
			break;
		case 5: exit(0);
		default: printf("Invalid option\n");
		}
	} while(ch!=5);
	getch();
}
void Read(int a[10][10],int row,int col)
{
	int i,j;
	for(i=0;i<row;i++)
	{
		for(j=0;j<col;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
}
void Sparse(int a[10][10],int row,int col)
{
int count=0,k=1,i,j;
int s1[10][3];
for(i=0;i<row;i++)
{
	for(j=0;j<col;j++)
	{
		if(a[i][j]!=0)
		{
			s1[k][0]=i;
			s1[k][1]=j;
			s1[k][2]=a[i][j];
			count++;
			k++;
		}
	}
		s1[0][0]=row;
		s1[0][1]=col;
		s1[0][2]=count;
	}
	printf("sparse matrix is\n");
	printf("row column value\n");
	for(i=0;i<=count;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%4d",s1[i][j]);
		}
		printf("\n");
	}
}
void Transpose(int a[10][10],int row,int col)
{
	int count=0,k=1,i,j;
	int s1[10][3];
	for(i=0;i<row;i++)
	{
		for(j=0;j<col;j++)
		{
			if(a[i][j]!=0)
			{
				s1[k][0]=i;
				s1[k][1]=j;
				s1[k][2]=a[i][j];
				count++;
				k++;
			}
		}
		s1[0][0]=row;
		s1[0][1]=col;
		s1[0][2]=count;
	}
	printf("Transpose of sparse matrix is\n");
	printf("Row Col Value\n");
	printf("  %d   %d   %d\n",s1[0][0],s1[0][1],s1[0][2]);
	for(i=1;i<=count;i++)
	{
		printf("  %d   %d   %d\n",s1[i][1],s1[i][0],s1[i][2]);
	}

}
void Addition(int a1[10][10],int a2[10][10],int row1,int col1)
{
	int a3[10][10]={0};
	int i,j;
	printf("Addition of two sparse matrices is\n");
	for(i=0;i<row1;i++)
	{
		for(j=0;j<col1;j++)
		{
			a3[i][j]=a1[i][j] + a2[i][j];
		}
	}
	Sparse(a3,row1,col1);
	Transpose(a3,row1,col1);
}
void Multiplication(int a1[10][10],int a2[10][10],int row1,int col1,int row2,int col2)
{
	int i,j,k;
	int a3[10][10];
	printf("Multiplication is\n");
	if(col1==row2)
	{
		for(i=0;i<row1;i++)
		{
			for(j=0;j<col2;j++)
			{
				a3[i][j]=0;
				for(k=0;k<col1;k++)
				{
					a3[i][j] += a1[i][k]*a2[k][j];
				}
				printf("%4d",a3[i][j]);
			}
			printf("\n");
		}
		Sparse(a3,row1,col2);
	}
	else
		printf("Multiplication is not possible\n");
}