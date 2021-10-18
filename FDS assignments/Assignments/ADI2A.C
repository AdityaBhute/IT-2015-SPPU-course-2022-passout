
//Assignment 2
//1-D ARRAY OPERATIONS
#include<stdio.h>
#include<conio.h>
void Union(int a[5],int b[5]);
void intersection(int a[5],int b[5]);
void difference(int a[5],int b[5]);
void sym_diff(int a[5],int b[5]);
void main()
{
 int a[5],b[5],i,c;
 clrscr();
 printf("enter 1st array\n");
 for(i=0;i<5;i++)
 {
   scanf("%d",&a[i]);
 }
 printf("enter 2nd array\n");
 for(i=0;i<5;i++)
 {
   scanf("%d",&b[i]);
 }
 printf("1.union\n2.intersection\n3.difference\n4.symmetric differnce\n");
 printf("enter your choice\n");
 scanf("%d",&c);
 switch(c)
 {
   case 1:Union(a,b);
	   break;
   case 2:intersection(a,b);
	   break;
   case 3:difference(a,b);
	   break;
   case 4:sym_diff(a,b);
	   break;
   default:printf("invalid\n");
 }
 getch();
}
void Union(int a[5],int b[5])
{
  int j=0,c[10],i;
  for(i=0;i<5;i++)
  {
     c[i]=a[i];
  }
  for(i=5;i<10;i++)
  {
     c[i]=b[j];
     j++;
  }
  printf("union of 2 arrays is:\n");
  for(i=0;i<10;i++)
  {
    printf("%4d",c[i]);
  }
}
void intersection(int a[5],int b[5])
{
  int i,j;
  printf("intersection of 2 arrays is\n");
  for(i=0;i<5;i++)
  {
    for(j=0;j<5;j++)
    {
      if(a[i]==b[j])
      {
	printf("%4d",a[i]);
      }
    }
  }
}
void difference(int a[5],int b[5])
{
  int i,j,c[5];
  printf("difference of 2 arrays i.e A-B is\n");
  for(i=0;i<5;i++)
  {
    for(j=0;j<5;j++)
    {
      if(a[i]==b[j])
      {
	 break;
      }

    }
    if(j==5)
	printf("%4d",a[i]);
  }
}
void sym_diff(int a[5],int b[5])
{
  int i,j,k,c[5];
  printf("symmetric difference of 2 arrays is\n");
  for(i=0;i<5;i++)
  {
    for(j=0;j<5;j++)
    {
      if(a[i]==b[j])
      {
	break;
      }
    }
    if(j==5)
    printf("%4d",a[i]);
  }
  for(i=0;i<5;i++)
  {
    for(j=0;j<5;j++)
    {
      if(b[i]==a[j])
      {
	break;
      }
    }
    if(j==5)
    printf("%4d",b[i]);
  }
}