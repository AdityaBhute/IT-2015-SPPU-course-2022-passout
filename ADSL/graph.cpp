#include <iostream>
#include <cstdlib>
using namespace std;
class node
{
          public:
					int data;
					node *next;
};

class graph
{
		public:
				int cnt,acnt;
				node *head[10];
				node *t;
			/*	graph()
				{
					for(int i=0;i<10;i++)
					{
							head[i]->next=NULL;
					}
				}*/
				void input_linklist();
                    void display();
				void input_admatrix();
};

void graph::input_linklist()
{
      	       cout<<"\nEnter the Number of node";
       	       cin>>cnt;
			  node *temp;
               //  temp= new node();
		       for(int i=1;i<=cnt;i++)
			  {
		      	    head[i]=new node();
                        cout<<"\nEnter the Head  "<<i<<" data";
                        cin>>head[i]->data;
                        cout<<"\nEnter the no of element to be attach";
				    cin>>acnt;
				    temp=head[i];
		              for(int j=1; j<=acnt; j++)
			         {
						t=new node();
						t->next=NULL;
						cout<<"\nEnter the Element to be attach to"<<head[i]->data<<":";
						cin>>t->data;
                              temp->next=t;
						temp=temp->next;													
			         }
		      }	
}
void graph::display()
{
			  for(int i=1;i<=cnt;i++)
			  {
                     	t=head[i];
                         while(t!=NULL)
					{
                         	cout<<t->data<<"->";
						t=t->next;
				     }
					cout<<"NULL";
                         cout<<"\n";             
			}	
							
}
int main()
{
				graph obj;
				int ch;
                    while(1)
				{
                    	cout<<"\nEnter the choice";
					cout<<"\n1.insert";
					cout<<"\n2.display";
					cout<<"\n3.exit";
					cin>>ch;
					switch(ch)
					{
						case 1:
                                          obj.input_linklist();
								  break;
						case 2:
								  obj.display();
								  break;
                              case 3:
                                          exit(0);	 
					}
                    }

				return 0;
}
 	






