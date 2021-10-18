#include<iostream.h>
#include<conio.h>
 class weather
 {
    int temp,rain,t,r,p;
     public:
       weather()
	 {
	   temp=0;
	   rain=0;
	 }
       void accept()
	 {
	   cout<<"Enter the temp and rain"<<endl;
	   cin>>temp>>rain;
	 }
       void display()
	{
	  cout<<"Temperature="<<temp<<endl<<"Rain="<<rain<<endl;
	}
       void average(weather*w,int n)
       {
	  int sumr=0,sumt=0,averager,i,averaget;

	  for(i=0;i<n;i++)
	    {
	      sumr=sumr+w[i].rain;
	      sumt=sumt+w[i].temp;
	    }
	   averager=sumr/n;
	   averaget=sumt/n;
	   cout<<"average for rain is:"<<averager<<endl;
	   cout<<"average for temperature is:"<<averaget<<endl;
       }
       void maximum(weather*w,int n)
       {int i,max=0;
	w[0].temp=max;
		for(i=1;i<n;i++)
		 {
		  if(max<w[i].temp)
		   {
		    max=w[i].temp;
		   }
		 }
		cout<<"Maximum temperature ="<<max<<endl;


      }

 };

 int main()
 {
	 int n,i,o;
	 clrscr();
	 weather w[10],p;
	 do
   {
	 cout<<"1.accept"<<endl<<"2.display"<<endl<<"3.average"<<endl<<"4.maximum temperature"<<endl<<"5.exit"<<endl;
	 cin>>o;


	 switch(o)
      {
	 case 1: cout<<" enter the no of day="<<endl;
		 cin>>n;
		 for(i=0;i<n;i++)
		{
		    w[i].accept();
		}
		break;
	 case 2:for(i=0;i<n;i++)
		{
		      w[i].display();
		}
		break;
	 case 3:
		 p.average(w,n);
		 break;
	 case 4:
	       w[i].maximum(w,n);


  }
   }while(o!=5);
	 getch();
	 return 0;
 }




