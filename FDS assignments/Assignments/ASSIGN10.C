//ASSIGNMENT-10
//POLYNOMIAL OPERATIONS

#include<stdio.h>
#include<conio.h>
struct poly
{
  int exp,coef;
};
struct poly p1[10],p2[10],p3[10];
int read(struct poly p[]);
void print(struct poly p[],int n);
int add(struct poly p1[],struct poly p2[],struct poly p3[],int n1,int n2);
int mul(struct poly p1[],struct poly p2[],struct poly p3[],int n1,int n2);
/*struct poly
{
  int exp,coef;
};
struct poly p1[10],p2[10],p3[10];*/
int read(struct poly p[])
{
  int i=0,n;
  printf("\nEnter no.of terms\n");
  scanf("%d",&n);
  for(i=0;i<n;i++)
  {
    printf("Enter power");
    scanf("%d",&p[i].exp);
    printf("Enter coefficient");
    scanf("%d",&p[i].coef);
  }
  return n;
}
void print(struct poly p[],int n)
{
  int i;
  char sign;
  for(i=0;i<n;i++)
  {
	if(p[i].coef>0)
		sign='+';
	else
		sign='-';
    printf("%c%dx^%d  ",sign,p[i].coef,p[i].exp);
  }
}
int add(struct poly p1[],struct poly p2[],struct poly p3[],int n1,int n2)
{
  int i=0,j=0,k=0;
  while(i<n1&&j<n2)
  {
     if(p1[i].exp<p2[j].exp)
     {
	p3[k]=p2[j];
	k++;
	j++;
     }
     else
     {
     if(p1[i].exp>p2[j].exp)
     {
       p3[k]=p1[i];
       k++;
       i++;
     }
     else
     {
	p3[k].exp=p1[i].exp;
	p3[k].coef=p1[i].coef+p2[j].coef;
	i++;
	j++;
	k++;
     }
     }
   }
   while(i<n1)
   {
     p3[k]=p1[i];
     k++;
     i++;
   }
   while(j<n2)
   {
     p3[k]=p2[j];
     k++;
     j++;
   }
   return k;
}
int mul(struct poly p1[],struct poly p2[],struct poly p3[],int n1,int n2)
{
  int i,j,k,terms;
  i=0,k=0;
  while(i<n1)
  {
   j=0;
   while(j<n2)
   {
     p3[k].exp=p1[i].exp+p2[j].exp;
     p3[k].coef=p1[i].coef*p2[j].coef;
     j++;
     k++;
   }
   i++;
  }
  terms=k;
  for(i=0;i<k;i++)
  {
	for(j=i+1;j<k;j++)
	{
		if(p3[i].exp==p3[j].exp)
		{
			p3[i].coef=p3[i].coef+p3[j].coef;
			terms--;
		}
	}
  }
  return terms;
}
void main()
{
  int t1,t2,t3,t4;
  clrscr();
  t1=read(p1);
  printf("\nFirst polynomial:\n");
  print(p1,t1);
  t2=read(p2);
  printf("\nSecond polynomial:\n");
  print(p2,t2);
  printf("\nAddition is\n");
  t3=add(p1,p2,p3,t1,t2);
  print(p3,t3);
  printf("\nMultiplication is\n");
  t4=mul(p1,p2,p3,t1,t2);
  print(p3,t4);
  getch();

}

