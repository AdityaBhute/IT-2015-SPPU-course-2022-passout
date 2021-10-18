#include<iostream>
using namespace std;
class demo
{
 double x,y;
 public:
 void accept()
  {
   cout<<"Enter two numbers";
   cin>>x>>y;
  }
 void divide()
  {
   double z;
   try
   {
    if(y==0)
     {
      throw y;
     }
    else
    {
     z=x/y;
     cout<<z;
    }
   }
  catch(double y)
   {
    cout<<"You have entered denominator 0";
   }
  };

 int main()
 {
  demo d;
  d.accept();
  d.divide();
  return 0;
 }
