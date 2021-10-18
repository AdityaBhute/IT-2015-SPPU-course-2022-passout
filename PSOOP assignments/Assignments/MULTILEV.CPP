#include<iostream.h>
#include<conio.h>

class college
{
 char name[20];
 public:
 void inputclg()
 {
  cout<<"Enter College Name:";
  cin>>name;
 }
 void outputclg()
 {
  cout<<"Name:"<<name<<endl;
 }
};

class branch:public college
 {
  char BranchName[20];
  int intake;
  public:
  void inputbr()
  {
   cout<<"Enter Branch Name:";
   cin>>BranchName;
   cout<<"Enter Intake:";
   cin>>intake;
  }
  void outputbr()
  {
   cout<<"Branch:"<<BranchName<<endl;
   cout<<"Intake:"<<intake<<endl;
  }
 };
 class student:public branch
 {
   int rollno;
   char stname[20];
   public:
   void inputst()
   {
    cout<<"Enter Roll Number:";
    cin>>rollno;
    cout<<"Enter Name:";
    cin>>stname;
   }
   void outputst()
   {
    outputclg();
    outputbr();
    cout<<"Roll Number:"<<rollno<<endl;
    cout<<"Name"<<stname<<endl;
   }
  };

  int main()
  {
   student S1;
   S1.inputclg();
   S1.inputbr();
   S1.inputst();
   S1.outputst();
   clrscr();
   return 0;
  }