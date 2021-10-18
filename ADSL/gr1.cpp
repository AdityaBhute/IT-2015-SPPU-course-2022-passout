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
	
	int cnt,ncnt;
	int a[20][20];
	node *head[10];
	public:
	static int tcnt;
	/*graph()
	{
		for(int 	i=0;i<10;i++)
		{
			head[i]->next=NULL;
		}
	}*/
	void input_linklist();
	void input_admatrix();
	void display();
	void dispmatrix();
};
static int graph::tcnt;
void graph::input_linklist()
{
	int acnt;
	node *newnode,*temp;
	cout<<"Enter number of nodes :"<<tcnt++;
	cin>>cnt>>tcnt++;
	for(int i=0;i<cnt;i++)
	{
		head[i]=new node();
		cout<<"Enter head node =";
		cin>>head[i]->data;
		head[i]->next=NULL;
		cout<<"Enter number of adjcent node of "<<head[i]->data<<":";
		cin>>acnt;
		temp=head[i];
		tcnt++;
		for(int j=0;j<acnt;j++)
		{
			newnode=new node();
			newnode->next=NULL;
			cout<<"Enter adjacent node of "<<head[i]->data<<":";
			cin>>newnode->data;
			temp->next=newnode;
			temp=temp->next;
			tcnt++;
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
		tcnt++;
		}
	cout<<"NULL "<<endl;
	tcnt++;
	}
	tcnt++;
}
void graph::input_admatrix()
{
	cout<<"Enter number of node:"<<tcnt++;
	cin>>ncnt>>tcnt++;
	for(int i=1;i<=ncnt;i++)
	{
		cout<<"Entre 1 if connected to "<<i<<":";
		for(int j=1;j<=ncnt;j++)
		{
			cin>>a[i][j];
			tcnt++;
		}
		tcnt++;
	}
}
void graph::dispmatrix()
{
	cout<<"Display adjancy Matrix= \n"<<tcnt++;
	for(int i=1;i<=ncnt;i++)
	{
		
		for(int j=1;j<=ncnt;j++)
		{
			cout<<a[i][j]<<"\t";
			tcnt++;
		}
		cout<<endl;
		tcnt++;
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
		cout<<"\n 3.Adjancy matrix";
		cout<<"\n 4.diplay matrix";
		cout<<"\n 5.Quit";
		cout<<"\n Enter your choice=";
		cin>>ch;
		switch(ch)
		{
			case 1:
				g.input_linklist();
				cout<<endl;
				cout<<"Value of logical runtime "<<graph::tcnt;	
			break;
			case 2:
				g.display();
				cout<<endl;
				cout<<"Value of logical runtime "<<graph::tcnt;
			break;
			case 3:
				g.input_admatrix();
				cout<<endl;
				cout<<"Value of logical runtime "<<graph::tcnt;	
			break;
			case 4:
				g.dispmatrix();
				cout<<endl;
				cout<<"Value of logical runtime "<<graph::tcnt;
			break;
			case 5:
				break;
			default:
				cout<<"Invaild choice";
		}
	}
	
	return(0);		
}	
