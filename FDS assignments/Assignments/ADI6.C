#include<stdio.h>
#include<conio.h>
void BubbleSort(char str[]);
void SelectionSort(char str[]);
void BinarySearch(int y[]); //without recursion
void Binsearch_Recursion(int a[],int low,int high,int x); //with recursion
void main()
{
  int c,n,i,x;
  int a[10];
  char str[10];
  int y[10];
  clrscr();
  printf("Enter a string:");
  scanf("%s",str);
   do
   {
    printf("1.Bubblesort\n");
    printf("2.Selection sort\n");
    printf("3.Binary search\n");
    printf("4.Binsearch recursion\n");
    printf("5.Exit\n");
    printf("\nEnter your choice:\n");
    scanf("%d",&c);
    switch(c)
    {
     case 1: BubbleSort(str);
	     break;
     case 2: SelectionSort(str);
	     break;
     case 3: BinarySearch(y);
	     break;
     case 4: printf("Enter number of elelments \n");
	     scanf("%d",&n);
	     printf("Enter array elemnts");
	     for(i=0;i<n;i++)
	      {
	       scanf("%d",&a[i]);
	      }
	    printf("Enter elements to search\n");
	    printf("%d",&x);
	    Binsearch_Recursion(a,0,n-1,x);
	    break;
     case 5: exit(0);
    }
   }while(c!=5);
   getch();
 }
  void BubbleSort(char str[])
   {
    int i,j,len;
     char temp;
    for(len=0;str[len]!='\0';len++)
    printf("\nBubble sort after each pass:");
    for(i=0;i<len;i++)
     {
      for(j=0;j<len-1-i;j++)
       {
	if(str[j]>str[j+1])
	 {
	   temp=str[j+1];
	   str[j+1]=str[j];
	   str[j]=temp;
	 }
       }
     printf("%s\n",str);
    }
   printf("\nSorted string is: %s",str);
  }
 void SelectionSort(char str[])
  {
   int i,j,len;
   char temp;
   for(len=0;str[len]!='\0';len++);
   for(i=0;i<len-1;i++)
    {
    // str[min]=i;
     for(j=i+1;j<len;j++)
      {
       if(str[i]<str[j])
	{
	 temp=str[i];
	 str[i]=str[j];
	 str[j]=temp;
	}
      }
    }
    printf("Sorted string is:%s\n",str);
  }
 void BinarySearch(int y[])
  {
    int i,n,x;
    int mid;
    int high;
    int low;
    printf("Enter number of elements\n");
    scanf("%d",&n);
    printf("Enter the array elements\n");
    for(i=0;i<n;i++)
     {
      scanf("%d",&y[i]);
     }
   printf("Elements to be searched\n");
   scanf("%d",&x);
   low=0;
   high=n-1;
   while(low<=high)
   {
	mid=(low+high)/2;
	if(y[mid]==x)
	{
		printf("%d Found at location %d.\n",x,mid+1);
		break;
	}
	if(y[mid]<x)
	    low=mid+1;
	else
	    high=mid-1;
    }

  if(low>high)
	printf("Not found! %d not in the list\n",x);
 }
 void Binsearch_Recursion(int a[],int low,int high,int x)
   {
     int mid;
     if(low<=high)
      {
       mid=(low+high)/2;
       if(x==a[mid])
	{
	      printf("%d Successful Search %d.\n");
	}
       else if(x<a[mid])
	       Binsearch_Recursion(a,0,mid-1,x);
       else
	       Binsearch_Recursion(a,mid+1,high,x);
      }
     if(low>high)
	   printf("Unsuccessful Search %d\n");
   }