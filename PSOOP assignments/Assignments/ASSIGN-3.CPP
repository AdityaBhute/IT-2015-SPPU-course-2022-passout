
#include<iostream.h>
#include<conio.h>
class complex
{
int img,real;
public:
complex()
{
img=0;
real=0;
}
complex(int a,int b)
{
img=a;
real=b;
}
friend complex operator +(complex c1,complex c2);
friend complex operator -(complex c1,complex c2);
complex operator*(complex c);
complex operator/(complex c);
void accept()
{
cout<<"Enter real and img="<<endl;
cin>>real>>img;
}
void display()
{
cout<<"real= "<<real<<"img= "<<img<<endl;
}

};

 complex operator+(complex c1,complex c2)
{
complex temp;
temp.real=c1.real+c2.real;
temp.img=c1.img+c2.img;
return temp;

}
complex operator-(complex c1,complex c2)
{
complex temp;
temp.real=c1.real-c2.real;
temp.img=c1.img-c2.img;
return temp;
}
complex complex::operator*(complex c)
{
complex temp;
temp.real=real*c.real-img*c.img;
temp.img=real*c.img+img*c.real;
return temp;
}
complex complex::operator/(complex c)
{
complex temp;
temp.real=(real*c.real+img*c.img)/(real*c.real+img*c.img);
temp.img=(-real*c.img+img*c.real)/(-real*c.img+img*c.real);
return temp;
}
void main()
{
complex c1,c2,c3;
clrscr();
c1.accept();
c2.accept();
c3=c1+c2;
cout<<"Addition is"<<endl;
c3.display();
c3=c1-c2;
cout<<"Substraction is"<<endl;
c3.display();
c3=c1*c2;
cout<<"Multiplication is"<<endl;
c3.display();
c3=c1/c2;
cout<<"Division is"<<endl;
c3.display();
getch();
}

