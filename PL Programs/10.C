#include<stdio.h>
#include<malloc.h>
#include<conio.h>
struct link{
   int coeff;
   int pow;
   struct link *next;
   };
struct link *poly1=NULL,*poly2=NULL,*poly=NULL;
void create(struct link *node)
{
	char ch;
	do
	{
	  printf("\n\nenter coeff:");
	  scanf("%d",&node->coeff);
	  printf("\nenter power:");
	  scanf("%d",&node->pow);
	  node->next=(struct link*)malloc(sizeof(struct link));
	  node=node->next;
	  node->next=NULL;
	  printf("\ncontinue(y/n):");
	  ch=getch();
	} while(ch=='y' || ch=='Y');
}

void show(struct link *node)
{
	while(node->next!=NULL)
	{
	   printf("%dx^%d",node->coeff,node->pow);
	   node=node->next;
	   if(node->next!=NULL)
		printf(" + ");
	}
}

void polyadd(struct link *poly1,struct link *poly2,struct link *poly)
{
	while(poly1->next &&  poly2->next)
	{
		if(poly1->pow>poly2->pow)
		{
			poly->pow=poly1->pow;
			poly->coeff=poly1->coeff;
			poly1=poly1->next;
		}
	else 	if(poly1->pow<poly2->pow)
		{
			poly->pow=poly2->pow;
			poly->coeff=poly2->coeff;
			poly2=poly2->next;
		}
	else
		{
			poly->pow=poly1->pow;
			poly->coeff=poly1->coeff+poly2->coeff;
			poly1=poly1->next;
			poly2=poly2->next;
		}
		poly->next=(struct link *)malloc(sizeof(struct link));
		poly=poly->next;
		poly->next=NULL;
		while(poly1->next || poly2->next)
		{
			if(poly1->next)
			{
				poly->pow=poly1->pow;
				poly->coeff=poly1->coeff;
				poly1=poly1->next;
			}
			else	if(poly2->next)
				{
					poly->pow=poly2->pow;
					poly->coeff=poly2->coeff;
					poly2=poly2->next;
					poly->next=(struct link *)malloc(sizeof(struct link));
					poly=poly->next;
					poly->next=NULL;
					poly1=poly1->next;
				}
				else
					if(poly1->pow<poly2->pow)
					{
						poly->pow=poly2->pow;
						poly->coeff=poly2->coeff;
						poly2=poly2->next;
					}
			else
			{
				poly->pow=poly1->pow;
				poly->coeff=poly1->coeff-poly2->coeff;
				poly1=poly1->next;
				poly2=poly2->next;
				poly->next=(struct link *)malloc(sizeof(struct link));
				poly=poly->next;
				poly->next=NULL;
			}
		}
		while(poly1->next || poly2->next)
		{
			if(poly1->next)
			{
				poly->pow=poly1->pow;
				poly->coeff=poly1->coeff;
				poly1=poly1->next;
			}
			if(poly2->next)
			{
				poly->pow=poly2->pow;
				poly->coeff=poly2->coeff;
				poly2=poly2->next;
			}
			poly->next=(struct link *)malloc(sizeof(struct link));
			poly=poly->next;
			poly->next=NULL;
		}
}
}

void polymul(struct link *n1, struct link *n2, struct link *n)
{
	struct link * n2beg=n2;
	while (n1)
	{
		struct link * temp=(struct link *)malloc(sizeof(struct link));
		temp->next=NULL;
		n2=n2beg;
		while (n2)
		{
			temp->coeff = n1->coeff * n2->coeff;
			temp->pow = n1->pow + n2->pow;
			n2 = n2->next;
			temp->next=(struct link *)malloc(sizeof(struct link));
			temp=temp->next;
			temp->next=NULL;
		}
		polyadd(temp,n,n);
		n1 = n1->next;
		free(temp);
	  }
}
void diff(struct link* p1,struct link* p2)
{
	while(p1->next!=NULL)
	{
		p2->coeff=p1->coeff*p1->pow;
		p2->pow=p1->pow-1;
		p2->next=NULL;
		p2->next=(struct link *)malloc(sizeof(struct link));
		p2=p2->next;
		p2->next=NULL;
		p1=p1->next;
	}
}
void main()
{
	int op;
	char ch;
	clrscr();
	do{
		poly1=(struct link *)malloc(sizeof(struct link));
		poly2=(struct link *)malloc(sizeof(struct link));
		poly=(struct link *)malloc(sizeof(struct link));
		printf("\n\nWhat do you want to do?\n");
		printf("1.Addition\n2.Subtraction\n3.Multiplication\n4.Differentiation\n0.Exit\n");
		printf("\nEnter your choice:");
		scanf("%d",&op);
		switch(op)
		{
			case 1: printf("\n\nenter 1st polynomial:");
				create(poly1);
				printf("\n\nenter 2nd polynomial:");
				create(poly2);
				printf("\n1st Polynomial:\t");
				show(poly1);
				printf("\n2nd Polynomial:\t");
				show(poly2);
				polyadd(poly1,poly2,poly);
				printf("\nAdded polynomial:\t");
				show(poly);
				break;
			/*case 2: printf("\n\nenter 1st polynomial:\t");
				create(poly1);
				printf("\n\nenter 2nd polynomial:\t");
				create(poly2);
				printf("\n\n1st Polynomial:\t");
				show(poly1);
				printf("\n\n2nd Polynomial:\t");
				show(poly2);
				polysub(poly1,poly2,poly);
				printf("\n\nSubtracted polynomial:\t");
				show(poly);
				break;*/
			case 3: printf("\n\nenter 1st polynomial:");
				create(poly1);
				printf("\n\nenter 2nd polynomial:");
				create(poly2);
				printf("\n\n1st Polynomial:\t");
				show(poly1);
				printf("\n\n2nd Polynomial:\t");
				show(poly2);
				polymul(poly1,poly2,poly);
				printf("\n\nMultiplied polynomial:\t");
				show(poly);
				break;
			case 4: printf("\n\nenter polynomial:");
				create(poly1);
				printf("\n\nPolynomial:\t");
				show(poly1);
				diff(poly1,poly2);
				printf("\n\nDifferentiated Polynomial:\t");
				show(poly2);
				break;
		}

 /* printf("\n Want to continue? Y/N:");
  ch=getch();*/
  }while(op);
  getch();
}

