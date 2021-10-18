//Binary search with recursion
#include<stdio.h>
#include<conio.h>
int BinarySearch(int a[],int low,int high,int key);
void main()
{
	int a[5];
	int i,key,flag;
	clrscr();
	printf("Enter array elements\n");
	for(i=0;i<5;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("Enter key element to search\n");
	scanf("%d",&key);
	flag=BinarySearch(a,0,4,key);
	if(flag==-1)
		printf("Key element not found\n");
	else
		printf("Element is found at %d position\n",flag);
	getch();
}
int BinarySearch(int a[],int low,int high,int key)
{
	int mid;
	if(low<=high)
	{
		mid=(low+high)/2;
		if(key==a[mid])
			return mid-1;
		else
			if(key>a[mid])
				return(a,mid+1,high,key);
			else
				return(a,low,mid-1,key);
	}
	return -1;
}