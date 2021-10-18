#include <iostream>
#include <cstdlib>
using namespace std;
class graph1
{
          public:
					int a[10][10];
					void read(int);
					void display(int);
};
void graph1::read(int cnt)
{
		int i,j;

		for(i=1;i<=cnt;i++)
		{
			cout<<"Enter the nodes which connected to: "<<i<<"\n";
			for(j=1;j<=cnt;j++)
			{
				cin>>a[i][j];
			}
		}		
}
void graph1::display(int cnt) 
{
		int i,j;
		for(i=1;i<=cnt;i++)
		{
			for(j=1;j<=cnt;j++)
			{
				cout<<"\t"<<a[i][j];
			}
           	cout<<"\n";     
		}		
}
int main()
{
		int cnt;		
		graph1 obj;
        	cout<<"Enter the no of nodes";
		cin>>cnt;
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
                                     obj.read(cnt);
							  break;
			     case 2:
							  obj.display(cnt);
							  break;
                    case 3:
                                     exit(0);	 
     		}	
		}		
          return 0;

}
