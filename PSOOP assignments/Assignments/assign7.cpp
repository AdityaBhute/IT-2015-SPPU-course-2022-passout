#include<iostream>
using namespace std;
template <class t1>
void accept(T1 a[10][10],T1 b[10][10],int r,int c)
{
 int i,j;
 cout<<"enter first matrix:";
 for(i=0;i<r;i++)
{
  for(j=0;j<c;j++)
   { 
     cin>>a[i][j];
   }
}
 cout<<"enter second matrix:";
 for(i=0;i<r;i++)
{
  for(j=0;j<c;j++)
   {
     cin>>b[10][10];
   }
}
}
 template<class t1>
 void add(T1 a[10][10],T1 b[10][10],int r,int c)
{
 int i,j;
 T1 z[10][10];
 for(i=0;i<r;i++)
{
  for(j=0;j<c;j++)
   {
      z[10][10]= a[10][10]+ b[10][10];
   }
}
cout<<"addition is:"<< z[10][10];
}

int main()
{
 int a[10][10],b[10][10],c[10][10];
int r,c,i,j,n;
float p[10][10],q[10][10],r[10][10];
cout<<"enter no of rows:";
cin>>r;
cout<<"enter no of coloumn:";
cin>>c;
cout<<"enter your choice:";
cout<<"1.add int\n";
cout<<"2.add float\n";
cin>>n;
switch(n)
{
case 1:accept(r,c,a,b);
       cout<<"addition is\n:";
       add(r,c,a,b);
       break;
case 2:accept(r,c,p,q);
       cout<<"addition is\n:";
       add(r,c,p,q);
       break;
}
return 0;
}



