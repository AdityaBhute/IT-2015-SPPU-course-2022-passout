#include<iostream>
#include<stdlib.h>
#include<string.h>
using namespace std;
#define max 20
class node
{
	public:
		char data;
		node *left;
		node *right;
};
class stack
{
	int top;
	node *st[20];
	public:
	stack()
	{
		top==-1;
	}
	
	int isempty();
	int isfull();
	void push(node *);
	node* pop();
	
};
int stack:: isempty()
{
	if(top==-1)
	return 1;
	return 0;
}
int stack:: isfull()
{
	if(top==max-1)
	return 1;
	return 0;
}
void stack::push(node *t)
{
	if(!isfull())
	{
		st[++top]=t;
	}
	else
	{
		cout<<"stack is full";
	}
}
node* stack::pop()
{
	if(!isempty())
	{
		cout<<"stack is empty";
	}
	else
	{
		return(st[top--]);
	}
}
class Etree
{
	
	
	
	node *l,*r,*t1;
	public:
		node* root;
		char a[20];
		Etree()
		{
			root==NULL;
		}
		stack s;
		void maketree();
		void prefix(node *t);
		void infix(node *t);
		void postfix(node *t);
		
};
void Etree::prefix(node *t)
{
	cout<<t->data<<"\t";
	prefix(t->left);
	prefix(t->right);
}
void Etree::infix(node *t)
{
	infix(t->left);
	cout<<t->data<<"\t";
	infix(t->right);
}
void Etree::postfix(node *t)
{
	postfix(t->left);
	postfix(t->right);
	cout<<t->data<<"\t";
}
void Etree::maketree()
{
	int i;
	cout<<"Enter the Postfix Expression";
	cin>>a;
	for(i=0;a[i]!='\0';i++)
	{
		if(a[i]=='+'||a[i]=='-'||a[i]=='*'||a[i]=='/')
		{
			r=s.pop();
			l=s.pop();
			t1=new node();
			t1->data=a[i];
			t1->right=r;
			t1->left=l;
			
			s.push(t1);
		}
		else
		{
			t1=new node();
			t1->data=a[i];
			t1->right==NULL;
			t1->left==NULL;
			s.push(t1);
		}
	}
	root=t1;
}

int main()
{
	int ch;
	Etree e1;
	do
	{
		cout<<"Menu\n";
		cout<<"1.Make e-tree\n 2.Display \n 3.Exit";
		cout<<"Enter your Choice";
		cin>>ch;
	
		switch(ch)
		{
			case 1:
				e1.maketree();
				cout<<"Postfix expression is:";
				cin>>e1.a;
				break;
			case 2:
				e1.infix(e1.root);
				break;
				
			case 3:
				exit(0);
				
							
		
		}
	}while(ch<3);
}
