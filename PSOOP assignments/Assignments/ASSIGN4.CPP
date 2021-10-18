
#include<iostream>

using namespace std;

class shape
{
protected:

int a,b;

public:

virtual void accept()=0;

virtual void cal_area()=0;

};

class triangle:public shape

{ public:
void accept()
 
{
   cout<<"Enter h and w";
  
 cin>>a>>b;
 
 }

void cal_area()
 
{
  float result=0.5*a*b;
 
   cout<<"Result is="<<result;
 
}

};

class rectangle:public shape

{public:
 void accept()
 
 {
   cout<<"Enter h and w";
  
 cin>>a>>b;
 
 }
 
void cal_area()
 
 {
    float result=a*b;
  
  cout<<"Result is="<<result;
 
 }

};

int main()

{
  shape *s;
 
 triangle t;rectangle r;

  s= &t;
 
s->accept();

 s->cal_area();
 
s= &r; 

 s->accept();

 s->cal_area();

 return 0;

}

