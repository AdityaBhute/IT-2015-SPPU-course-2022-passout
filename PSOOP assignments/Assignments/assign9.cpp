#include<fstream>
#include<iostream>
using namespace std;
class student
{
 char name[10];
 int rollno;
 public:
 void read()
  {
   ifstream ifs;
   ifs.open("hello.txt");
   while(ifs)
    {
     ifs.getline(name,10);
     cout<<name;
    }
  ifs.close();  
  }
 void write()
  {
   ofstream ofs;
   ofs.open("hello.txt");
   cout<<"Enter the name";
   cin>>name;
   ofs.close();
  }
};

int main()
{
  student s;
  s.write();
  s.read();
 
  return 0;
 }
