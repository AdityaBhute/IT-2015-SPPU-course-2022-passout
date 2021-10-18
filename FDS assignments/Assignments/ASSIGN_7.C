// ASSIGNMENT-7
// QUICKSORT

#include<stdio.h>
#include<conio.h>
void quicksort(int a[20],int low,int high);
int partition(int a[20],int low,int high);
void display(int a[20],int n);
void quicksort(int a[20],int low,int high)
{
  int pi;
  if(low<high)
  {
   pi=partition(a,low,high);
   quicksort(a,low,pi-1);
   quicksort(a,pi+1,high);
  }
}
int partition(int a[20],int low,int high)
{

  int pivot=a[high];
  int j,temp;
  int i=(low-1);
  for(j=low;j<=high-1;j++)
  {
    if(a[j]<pivot)
    {
      i++;
      temp=a[i];
      a[i]=a[j];
      a[j]=temp;
    }
  }
  temp=a[i+1];
  a[i+1]=a[high];
  a[high]=temp;
  return(i+1);
}
void display(int a[20],int n)
{
  int i;
  for(i=0;i<n;i++)
  {
    printf("%4d",a[i]);
  }
}
void main()
{
  int i,n,low,high,a[20];
  clrscr();
  printf("Enter no. of elements");
  scanf("%d",&n);
  printf("Enter elements");
  for(i=0;i<n;i++)
  {
    scanf("%d",&a[i]);
  }
  low=0;
  high=n-1;
  quicksort(a,low,high);
  display(a,n);
  getch();
}
}
void main()
{
  int i,n,low,high,a[20];
  clrscr();
  printf("Enter no. of elements");
  scanf("%d",&n);
  printf("Enter elements");
  for(i=0;i<n;i++)
  {
    scanf("%d",&a[i]);
  }
  low=0;
  high=n-1;
  quicksort(a,low,high);
  display(a,n);
  getch();
}
