#include<iostream>
using namespace std;

class node
{
	public:
	int data;
	node *next;
};

class graph
{
	int cnt;
	node *head[10];
	public:
	/*graph()
	{
		for(int 	i=0;i<10;i++)
		{
			head[i]->next=NULL;
		}
	}*/
	void input_linklist();
	//void input_admatrix();
	void display();
};
void graph::input_linklist()
{
	int acnt;
	node *newnode,*temp;
	cout<<"Enter number of nodes :";
	cin>>cnt;
	for(int i=0;i<cnt;i++)
	{
		head[i]=new node();
		cout<<"Enter head node =";
		cin>>head[i]->data;
		head[i]->next=NULL;
		cout<<"Enter number of adjcent node of "<<head[i]->data<<":";
		cin>>acnt;
		temp=head[i];
		for(int j=0;j<acnt;j++)
		{
			newnode=new node();
			newnode->next=NULL;
			cout<<"Enter adjacent node of "<<head[i]->data<<":";
			cin>>newnode->data;
			temp->next=newnode;
			temp=temp->next;
		}
	}
}

void graph::display()
{
	
	node *temp;
	for(int i=0;i<cnt;i++)
	{
		temp=head[i];
		while(temp!=NULL)
		{
		cout<<temp->data<<"-->";
		temp=temp->next;
		}
	cout<<"NULL "<<endl;
	}
}
int main()
{
	graph g;
	int ch;
	while(1)
	{
		cout<<"\n 1.Adjancy list";
		cout<<"\n 2.Display";
		cout<<"\n 3.Quit";
		cout<<"\n Enter your choice";
		cin>>ch;
		switch(ch)
		{
			case 1:
				g.input_linklist();
				cout<<endl;	
			break;
			case 2:
				g.display();
				cout<<endl;
			break;
			case 3:
				break;
			default:
				cout<<"Invaild choice";
		}
	}
	
	return(0);		
}	
