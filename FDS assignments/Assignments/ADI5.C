struct student
    {

    int rollno;
    char name[10];
    int marks;
    };
    struct student s[3];

    void Create(struct student s[]);
    void Display(struct student s[]);
    void Add(struct student s[]);
    void Search(struct student s[]);
    void Modify(struct student s[]);
    void Del(struct student s[]);
    void main()
    {
    int ch,n;
    clrscr();
    printf("1.create\n2.display\n3.add\n");
    printf("4.search\n5.modify\n6.del\n7.exit\n");
    do
    {
    printf("enter your choice\n");
    scanf("%d",&ch);
    switch(ch)
 {
  case 1:Create(s);
	 break;
  case 2:Display(s);
	 break;
  case 3:Add(s);
	 break;
  case 4:Search(s);
	 break;
  case 5:Modify(s);
	 break;
  case 6:Del(s);
	 break;
  case 7:exit(0);
  }
  }while(ch!=7);
  getch();
  }
void Create(struct student s[])
{
 int i,rollno;
 printf("Enter students information");
 for(i=0;i<3;i++)
 {
   printf("rollno name marks");
   scanf("%d",&s[i].rollno);
   scanf("%s",s[i].name);
   scanf("%d",&s[i].marks);
   }
}

 void Display(struct student s[])
 {
 int i,rollno;
 printf("Enter students information");
 for(i=0;i<3;i++)
 {
   printf("rollno name marks");
   printf("%d",&s[i].rollno);
   printf("%s",s[i].name);
   printf("%d",&s[i].marks);
   }
}


void Add(struct student s[])
{
int i,m,rollno,n;
printf("enter how many enteries you want to add");
scanf("%d",&m);
Create(s);
 for(i=0;i<n+3;i++)
 {
   printf("rollno name marks");
   scanf("%d",&s[i].rollno);
   scanf("%s",s[i].name);
   scanf("%d",&s[i].marks);
   }

for(i=0;i<3;i++)
 {
   printf("rollno name marks");
   printf("%d",&s[i].rollno);
   printf("%s",s[i].name);
   printf("%d",&s[i].marks);
   }
}
void Search(struct student s[])
{

 int i,rollno,roll;
 Create(s);
 printf("Enter a rollno");
 scanf("%d",&rollno);
 for(i=0;i<3;i++)
 {
 if(s[i].rollno==roll)
 {
 printf("Rollno not found");
 printf("%d",s[i].rollno);
 printf("%s",s[i].name);
 printf("%d",s[i].marks);
 break;
 }
 if(i==3)
 {
 printf("rollno,name,marks not found");
 }
 }
 }
void Modify(struct student s[])
{
 int i,rollno,roll;
 Create(s);
 printf("Enter a roll no");
 for(i=0;i<3;i++);
 {
 if(s[i].rollno==roll)
 {
   printf("rollno name marks");
   printf("%d",&s[i].rollno);
   printf("%s",s[i].name);
   printf("%d",&s[i].marks);
   }
}
for(i=0;i<3;i++)
 {
   printf("rollno name marks");
   printf("%d",&s[i].rollno);
   printf("%s",s[i].name);
   printf("%d",&s[i].marks);
   }
}
void Del(struct student s[])
{
int i,n;
printf("Enter how many you want to delete");
scanf("%d",&n);
Create(s);

for(i=3;i<3-n;i++)
 {
   printf("rollno name marks");
   printf("%d",&s[i].rollno);
   printf("%s",s[i].name);
   printf("%d",&s[i].marks);
}
printf("Display students information");
printf("rollno name marks");
for(i=0;i<3-n;i++)
{
 printf("%d",s[i].rollno);
 printf("%s",s[i].name);
 printf("%d",s[i].marks);
}
}