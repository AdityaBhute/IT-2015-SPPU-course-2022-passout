#include<stdio.h>
#include<conio.h>
void Create(int m[3][3],int n[3][3]);
void Display(int m[3][3],int n[3][3]);
void Addition(int m[3][3],int n[3][3]);
void Multiplication(int m[3][3],int n[3][3]);
void Transpose(int m[3][3]);
void Saddlepoint(int m[3][3]);
void main()
{
  int m[3][3],n[3][3],i,j,k;
  clrscr();

  do
  {
  printf("\n1.Create\n2.Display\n3.Addition\n4.Multiplication\n5.Transpose\n6.Saddle point\n7.Exit\n");
  printf("Enter your choice\n");
  scanf("%d",&k);
  switch(k)
  {
    case 1: Create(m,n);
	    break;
    case 2: Display(m,n);
	    break;
    case 3: Addition(m,n);
	   break;
    case 4: Multiplication(m,n);
	   break;
    case 5: Transpose(m);
	   break;
    case 6: Saddlepoint(m);
	   break;
    case 7:exit(0);
	   break;
    default : printf("invalid choice\n");
  }
  } while(k!=7);
  getch();
}
void Create(int m[3][3],int n[3][3])
{
  int i,j;
 printf("Enter 1st matrix\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
     scanf("%d",&m[i][j]);
    }
  }
  printf("Enter 2nd matrix\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      scanf("%d",&n[i][j]);
    }
  }
}
void Display(int m[3][3],int n[3][3])
{
 int i,j;
 printf("Enter 1st matrix\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
     printf("%4d",m[i][j]);
    }
    printf("\n");
  }
  printf("Enter 2nd matrix\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      printf("%4d",n[i][j]);
    }
    printf("\n");
  }
}
void Addition(int m[3][3],int n[3][3])
{
  int k[3][3],i,j;
  printf("Addition is=\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      k[i][j]=m[i][j]+n[i][j];
      printf("%4d",k[i][j]);
    }
    printf("\n");
  }
}
void Multiplication(int m[3][3],int n[3][3])
{
  int k[3][3],i,j,l;
  printf("Multiplication is=\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      k[i][j]=0;
      for( l=0;l<3;l++)
      {
	k[i][j]=k[i][j]+m[i][l]*n[l][j];
      }

    }
  }
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      printf("%4d",k[i][j]);
    }
    printf("\n");
  }
}
void Transpose(int m[3][3])
{
  int k[3][3],i,j;
  printf("Transpose is=\n");
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      k[i][j]=m[j][i];
      printf("%4d",m[i][j]);
    }
    printf("\n");
  }
}
void Saddlepoint(int m[3][3])
{
  int k[3][3],j,i,min[3],max[3],flag,ans;
  for(i=0;i<3;i++)
  {
    min[i]=1000;
    for(j=0;j<3;j++)
    {
      if(m[i][j]<min[i])
      {
	min[i]=m[i][j];
      }
    }
  }
  for(i=0;i<3;i++)
  {
    max[i]=0;
    for(j=0;j<3;j++)
    {
      if(max[i]<m[j][i])
      {
	max[i]=m[j][i];
      }
    }
  }
  for(i=0;i<3;i++)
  {
    for(j=0;j<3;j++)
    {
      if(min[i]==max[j])
      {
	flag=1;
	ans=min[i];
      }
    }
  }
  if(flag==1)
  {
     printf("Saddle point is=%d\n",ans);
  }
  else
  {
     printf("Saddlepoint is not found\n");
  }
 }


