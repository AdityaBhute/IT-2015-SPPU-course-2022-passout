//Selection Sort
#include<stdio.h>
#include<conio.h>
void SelectionSort(char str[]);
void main()
{
	char str[10];
	clrscr();
	printf("Enter a string\n");
	scanf("%s",str);
	SelectionSort(str);
	getch();
}
void SelectionSort(char str[])
{
	int len,i,j,position;
	char temp;
	for(len=0;str[len]!='\0';len++);
	printf("\nSorted string after each pass\n");
	for(i=0;i<len-1;i++)
	{
		position=i;
		for(j=i+1;j<len;j++)
		{
			if(str[position]>str[j])
				position=j;
		}
		if(position!=i)
		{
			temp=str[i];
			str[i]=str[position];
			str[position]=temp;
		}
		printf("%s\n",str);
	}
	printf("Sorted string is = %s\n",str);
}