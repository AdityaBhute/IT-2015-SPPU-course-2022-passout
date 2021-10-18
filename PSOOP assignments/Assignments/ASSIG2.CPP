#include<iostream.h>
#include<string.h>
#include<stdlib.h>
#include<conio.h>
class book
{
private:
	char *author,*title,*publisher;
	float *price;
	int *stock;
	static int total_count;
public:
	book()
	{
	author= new char[20];
	title=new char[20];
	publisher=new char[20];
	price= new float;
	stock=new int;
	}
	void adddata();
	void editdata();
	void showdata();
	int search(char[],char[]);
	void buybook();
	void display();
	static total_stock()
	{

	cout<<"\n Total Available books Stock in Library is :"<<total_count;

	}
};
void book::display()
{
cout<<"\n   "<<author<<"   "<<title<<"   "<<publisher<<"   "<<*price<<"   "<<*stock;
}

void book::adddata()
{
cout<<"\nEnter Author Name: ";
cin>>author;
cout<<"Enter Title Name: ";
cin>>title;
cout<<"Enter Publisher Name: ";
cin>>publisher;
cout<<"Enter Price: ";
cin>>*price;
cout<<"Enter Stock Position: ";
cin>>*stock;
total_count+=*stock;
}

void book::editdata()
{
	total_count-=*stock;
	cout<<"\nEnter Author Name: ";
	cout<<"Enter Title Name: ";
	cout<<"Enter Publisher Name: ";
	cout<<"Enter Price: ";
	cin>>*price;
	cout<<"Enter Stock Position: ";
	cin>>*stock;
	total_count+=*stock;

}

void book::showdata()
{
	cout<<"\nAuthor Name: "<<author;
	cout<<"\nTitle Name: "<<title;
	cout<<"\nPublisher Name: "<<publisher;
	cout<<"\nPrice: "<<*price;
	cout<<"\nStock Position: "<<*stock;

}

int book::search(char tbuy[20],char abuy[20] )
{
	if(strcmp(tbuy,title) && strcmp(abuy,author))
		return 0;
	else return 1;

}
int book:: total_count=0;
void book::buybook()
{
	int count;
	cout<<"\nEnter Number Of Books to buy: ";
	cin>>count;
	if(count<=*stock)
	{
		*stock=*stock-count;
		cout<<"\nBooks Bought Sucessfully";
		cout<<"\nAmount: Rs. "<<(*price)*count;
		total_count=total_count-count;
	}
	else
		cout<<"\nRequired Copies not in Stock";
}

int main()
{
book *B[20];
int i=0,j,k,op;
char titlebuy[20],authorbuy[20];
while(op!=6)
 {
 // clrscr();
  cout<<"\n\n\t\tMENU"
		<<"\n1. Entry of New Book"
		<<"\n2. Display "
		<<"\n3. Search For Book"
		<<"\n4. Edit Details Of Book"
		<<"\n5. Buy Book "
		<<"\n6. Exit"
		<<"\n\nEnter your Choice: ";
		cin>>op;

 switch(op)
 {
 case 1: B[i] = new book;
	B[i]->adddata();
	i++;
	break;
 case 2 : cout<<"AuthorName  Title_name  Publisher  Price  Stock\n";
	for(int j=0;j<i;j++)
	{
	B[j]->display();
	}
	//book:: total_stock();
	break;
 case 3: cin.ignore();
	cout<<"\nEnter Title Of Book: ";
	cout<<"\nEnter Author Of Book: ";

	for(j=0;j<i;j++)
	{
	if(B[j]->search(titlebuy,authorbuy))
	{
	cout<<"\nBook Found Successfully";
	B[j]->showdata();
	break;
	}
	}
	if(j==i)
	cout<<"\nThis Book is Not in Stock";
	break;
 case 4: cin.ignore();
	cout<<"\nEnter Title Of Book: ";
	cout<<"\nEnter Author Of Book: ";

	for(j=0;j<i;j++)
	{
	if(B[j]->search(titlebuy,authorbuy))
	{
	cout<<"\nBook Found Successfully";
	B[j]->editdata();
	break;
	}

	}
	if(j==i)
	cout<<"\nThis Book is Not in Stock";
	break;
 case 5:cin.ignore();
       cout<<"\nEnter Title Of Book:";
       cout<<"\nEnter Author Of Book:";

       for (j=0;j<i;j++)
       {
	if(B[j]->search(titlebuy,authorbuy))
	{
	cout<<"\nBook Found Successfully";
	B[j]->buybook();
	break;
	}
       }
	if(j==i)
	cout<<"\nThis Book is Not in Stock";
	break;
 case 6:exit(0);
	break;

 }
}
 return 0;
}