#include<iostream.h>
#include<conio.h>


class Person
 {
  protected:
  int age;
  char name[10],blood_group[5];
  public:
  void accept()
  {
   cout<<"Enter name of person:";
   cin>>name;
   cout<<"Enter age of person:";
   cin>>age;
   cout<<"Enter blood group:";
   cin>>blood_group;
   }
 };
class Staff
 {
   public:
   char dept[20];
   void getdata()
   {
     cout<<"Enter department of employee:";
     cin>>dept;
   }
 };
 class Manager:public Person,public Staff
  {
    protected:
    int salary;
    public:
    void acceptdata()
    {
     cout<<"Enter salary of employee:";
     cin>>salary;
    }
    void display()
    {
      cout<<"Name of the Manager is:"<<name<<endl;
      cout<<"Age of Manager is:"<<age<<endl;
      cout<<"Department of Manager is:"<<dept<<endl;
      cout<<"Salary is:"<<salary;
    }
  };

  int main()
   {
    Manager obj;
    obj.accept();
    obj.getdata();
    obj.acceptdata();
    obj.display();
    return 0;
   }