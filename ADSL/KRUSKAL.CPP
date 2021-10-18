/*
Group B . 10
There are flight path between cities.If there is a flight between city A & B
then there is an edge between the cities.The cost of the edge can be the time
that the flight takes to reach city B from A, or the amount of fuel used
for the journey.Represent this as a graph .The node can be represented
by airport name or name of city.use adjacency list representation of
graph or use adjacency matrix representation of graph .justify
the storage representation used   (Kruskal)*/
#include<iostream.h>
#include<iomanip.h>
#include<conio.h>
#include<stdlib.h>

int n,mat[10][10];
char city[10][20];

class kruskal
{
	public:	int i,k,j,w,l,wt,s[10],min;
			int mincost;

	public:	void getdata();
		 int kr(int cost[10][10],int n);

};

void kruskal :: getdata()
{
   int e,z,row,col;
	cout<<"\nkruskal's algorithm:";
	cout<<"\nEnter no. of vertices of graph:";
	cin>>n;
	cout<<"\nEnter cities of graph:";
	for(i=1;i<=n;i++)
	{
	cin>>city[i];
	}
	cout<<"\nEnter no. of edges :";
	cin>>e;
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=n;j++)
		{
		mat[i][j]=0;
		}
	}

	for(z=1;z<=e;z++)
	{

	  cout<<endl<<"Enter 2 vertices & wt ";
	  cin>>row>>col>>wt;
	  mat[row][col]=wt;
	  mat[col][row]=wt;
	}

cout<<endl<< " adjacency matrix is "<<endl;
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=n;j++)
		{
		    cout<<setw(4)<<mat[i][j];
		}
   cout<<endl;
	}

}

int kruskal :: kr(int cost[10][10],int n)
{
	int visited[20]={0};
	int min=999,mincost=0;
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=n;j++)
		{
			if(cost[i][j]<min && cost[i][j]!=0)
			{
				min=cost[i][j];
					k=i;
				l=j;
			}
		}
	}
	  visited[k]=1;
	  visited[l]=1;
	 cout<<"\n min edge is "<<k <<" to "<<l << " wt "<<cost[k][l]<< "mincost "<<mincost;
	 cout<<"\n min edge is "<<city[k] <<" to "<<city[l] << " wt "<<cost[k][l]<< "mincost "<<mincost;

	mincost=cost[k][l];
	   cost[k][l]=0;
	   cost[l][k]=0;
int cnt=2;
int row,col;
    while(cnt<n)
	{

	for(k=1,min=999;k<=n;k++)       // row
	 {
		// if(visited[k]==1)
		 // {
		   for(i=1;i<=n;i++)       // col
		   {
			 if(cost[k][i]<min && cost[k][i]!=0 && visited[i]==0)
			 {
				  row=k;
				  col=i;
				 min=cost[k][i];
			 }
		   }//for
	       //	 }//if
	  }
	mincost=mincost+min;
	 cout<<"\n min edge is "<<row <<" to "<<col << " wt "<<cost[row][col]<< " mincost "<<mincost;
	 cout<<"\n min edge is "<<city[row] <<" to "<<city[col] << " wt "<<cost[row][col]<< " mincost "<<mincost;

	cost[col][row]=0;
	 cost[row][col]=0;
	 visited[col]=1;
	 cnt++;
    }
return(mincost);
}


void main()
{
	int x;
	clrscr();
	kruskal p;
	p.getdata();
	x=p.kr(mat,n);
//	p.display(n);
	cout<<"\nThe wt. of min spanning tree is "<<x;
	getch();
}


