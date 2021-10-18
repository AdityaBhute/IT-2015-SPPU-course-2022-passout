//Polynomial operations using structure
#include<stdio.h>
#include<conio.h>
struct Poly
{
	int coef;
	int exp;
};
struct Poly *p1,*p2,*p3;
void Read_Poly(struct Poly *p,int n);
void Display_Poly(struct Poly *p,int n);
void Add_Poly(struct Poly *p1,struct Poly *p2,int n1,int n2);
void main()
{
	int i,j,n1,n2;
	clrscr();
	printf("Enter number of terms in polynomial 1 : ");
	scanf("%d",&n1);
	Read_Poly(p1,n1);
	Display_Poly(p1,n1);
	printf("\nEnter number of terms in polynomial 2 :");
	scanf("%d",&n2);
	Read_Poly(p2,n2);
	Display_Poly(p2,n2);
	printf("\nAfter addition : ");
	Add_Poly(p1,p2,n1,n2);
	getch();
}
void Read_Poly(struct Poly *p,int n)
{
	int i;
	for(i=0;i<n;i++)
	{
		printf("\nEnter coefficient %d : ",i+1);
		scanf("%d",&p[i].coef);
		printf("\nEnter exponent %d (in descending order) : ",i+1);
		scanf("%d",&p[i].exp);
	}
}
void Display_Poly(struct Poly *p, int n)
{
	int i;
	printf("\nPolynomial is := ");
	for(i=0;i<n;i++)
	{
		printf("%d(x^%d)+",p[i].coef,p[i].exp);
	}

}
void Add_Poly(struct Poly *p1,struct Poly *p2,int n1,int n2)
{
	int i=0,j=0;
	int n3=0;
	while(i<n1 && j<n2)
	{
		if(p1[i].exp == p2[j].exp)
		{
			p3[n3].coef = p1[i].coef + p2[j].coef;
			p3[n3].exp = p1[i].exp;
			i++;
			j++;
			n3++;
		}
		else
		if(p1[i].exp>p2[j].exp)
		{
			p3[n3].coef=p1[i].coef;
			p3[n3].exp=p1[i].exp;
			i++;
			n3++;
		}
		else
		{
			p3[n3].coef=p2[j].coef;
			p3[n3].exp=p2[j].exp;
			j++;
			n3++;
		}
	}
	while(i<n1)
	{
		p3[n3].coef=p1[i].coef;
		p3[n3].exp=p1[i].exp;
		i++;
		n3++;
	}
	while(j<n2)
	{
		p3[n3].coef=p2[j].coef;
		p3[n3].exp=p2[j].exp;
		j++;
		n3++;
	}
	Display_Poly(p3,n3);
}