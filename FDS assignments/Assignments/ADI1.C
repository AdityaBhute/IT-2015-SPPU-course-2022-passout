#include<stdio.h>
#include<conio.h>
void Create(int m[3][3]);
void Display(int m[3][3]);
void Addition(int m1[3][3],int m2[3][3]);
void Substraction(int m1[3][3],int m2[3][3]);
void Multiplication(int m1[3][3],int m2[3][3]);
void Transpose(int m1[3][3],int m2[3][3] );
void Saddle(int m1[3][3]);
void main()
{
 int m1[3][3],m2[3][3],m3[3][3];
 int ch,i,j;
 clrscr();
 do
 {
 printf("\n1. Create Matrix\n");
 printf("2. Display Matrix\n");
 printf("3. Addition of two matrix is");
 printf("\n4. Subtraction of two matrix is");
 printf("\n5. Multiplication of two matrix");
 printf("\n6. Transpose of matrix is");
 printf("\n7. Saddle Point");
 printf("\n8. Exit");
 printf("\nEnter your choise:");
 scanf("%d",&ch);

 switch(ch)
 {
  case 1:printf("Create first Matrix\n");
	 Create(m1);
	 printf("Create second Matrix\n");
	 Create(m2);
	 break;
  case 2:Display(m1);
	 Display(m2);
	 break;
  case 3: Addition(m1,m2);
	 break;
  case 4: Substraction(m1,m2);
	break;
  case 5: Multiplication(m1,m2);
	break;
   case 6: Transpose(m1,m2);
	break;
  case 7: Saddle(m1);
	  break;
  case 8: exit(0);
  default: printf("Invalid option\n");
 }
 }
  while(ch!=8);
 getch();
}
void Create(int m[3][3])
{
	int i,j;
	printf("\nEnter the matrix:\n");
	 for(i=0;i<3;i++)
	 {
	  for(j=0;j<3;j++)
	  scanf("%d",&m[i][j]);
	 }
}
void Display(int m[3][3])
{
	int i,j;
	printf("Matrix is\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%4d",m[i][j]);
		}
		printf("\n");
	}
}
void Addition(int m1[3][3],int m2[3][3])
{
 int m3[3][3];
 int i,j;
 printf("Addition of two matrix\n");
 for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
    m3[i][j]=m1[i][j]+m2[i][j];
 }
  }
 for(i=0;i<3;i++)
 {
   for(j=0;j<3;j++)
   {
    printf("%4d",m3[i][j]);
   }
  printf("\n");
 }
}
void Substraction(int m1[3][3],int m2[3][3])
{
 int m3[3][3];
 int i,j;
 printf("Substraction oftwo matrix\n");
 for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
   m3[i][j]=m1[i][j]-m2[i][j];
  }
 }
 for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
   printf("%4d",m3[i][j]);
  }
  printf("\n");
  }
}
void Multiplication(int m1[3][3],int m2[3][3])
{
    int i,j,k;
 int m3[3][3];

 printf("Multiplication of two matrix\n");
 for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
   m3[i][j]=0;
   for(k=0;k<3;k++)
   {

    m3[i][j] = m3[i][j]+m1[i][k]*m2[k][j];
   }


  }
 }
 for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
    printf("%4d",m3[i][j]);
  }
   printf("\n");
 }
}
void Transpose(int m1[3][3],int m2[3][3])
{
 int i,j;
// Create(m1);
 printf("Transpoe of two matrix\n");
 for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
   m1[i][j]=m2[j][i];
  }
 }
  for(i=0;i<3;i++)
 {
  for(j=0;j<3;j++)
  {
   printf("%4d",m1[i][j]);
  }
  printf("\n");
  }
}
void Saddle(int m1[3][3])
{
	int i,j,min[3]={0},max[3]={0};
	Create(m1);
	for(i=0;i<3;i++)
	{
		min[i]=m1[i][0];
		max[i]=m1[0][i];
		for(j=0;j<3;j++)
		{
			if(min[i]>m1[i][j])
			{
				min[i]=m1[i][j];
			}
			if(max[i]<m1[j][i])
			{
				max[i]=m1[j][i];
			}
		}
	}
	printf("\nMinimum row elements are = ");
	for(i=0;i<3;i++)
	{
		printf("%4d",min[i]);
	}
	printf("\nMaximum column elements are = ");
	for(i=0;i<3;i++)
	{
		printf("%4d",max[i]);
	}
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			if(min[i]==max[j])
				printf("\nSaddle point %d is at %d %d",min[i],i,j);
		}
	}
}