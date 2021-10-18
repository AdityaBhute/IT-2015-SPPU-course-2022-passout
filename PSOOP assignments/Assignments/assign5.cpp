#include<iostream>
using namespace std;

class shape
{
 protected:
 double height,base;
 public:
 virtual void accept()=0;
 virtual void cal_area()=0;
};
class triangle:public shape
{
 void accept()
{
 cout<<"enter height and base:";
 cin>>height>>base;
}
 void cal_area()
{
 double area;
 area=0.5*height*base;
 cout<<"area of triangle is:"<<area;
}
};
class rectangle:public shape
{
 void accept()
{
 cout<<"enter base and height:";
 cin>>base>>height;
}
 void cal_area()
{
 double area;
 area=base*height;
 cout<<"area of rectangle is:"<<area;
}
};

void main()
{
 shape *s;
 int op;
 cout<<"1.Triangle\n 2.Rectangle\n";
 cout<<"enter shape:";
 cin>>op;
 switch(op)
{
case 1: triangle t;
        s=&t;
        s->accept();
        s->cal_area();
        break;
case 2: rectangle r;
        s=&r;
        s->accept();
        s->cal_area();
        break;

}
} 

