#include<stdio.h>
#include<conio.h>
int  length(char str1[20]);
void palindrome(char str1[20]);
void compare(char str1[20]);
void copy(char str1[20]);
void reverse(char str1[20]);
void substring(char str1[20],char str2[20]);
void concatinate(char str1[20],char str2[20]);
void main()
{
 char str1[20]={0},str2[20]={0};
 int m,n;
 clrscr();
 printf("Enter a String-\n");
 scanf("%s",str1);
 printf("1.For length\n2.For palindrome\n3.To compare\n4.To copy\n5.To reverse\n6.To find substring\n7.concatination\n ");
 printf("Enter a choice\n");
 scanf("%d",&m);
 switch(m)
 {
  case 1:n=length(str1);
	 printf("Length of String is = %d\n",n);
	   break;
  case 2:palindrome(str1);
	   break;
  case 3:compare(str1);
	   break;
  case 4:copy(str1);
	   break;
  case 5:reverse(str1);
	   break;
  case 6:printf("Enter the String to be searched=\n");
	 scanf("%s",str2);
	 substring(str1,str2);
	   break;
  case 7:printf("Enter 2nd string for concatination");
	 scanf("%s",str2);
	 concatinate(str1,str2);
	  break;
  default: printf("Invalid Choice\n");
 }
  getch();
 }
 int length(char str1[20])
  {
   int i;
   for(i=0;str1[i]!='\0';i++);
   return(i);
  }
 void palindrome(char str1[20])
  {
   int i,j,n;
   int flag=0;
   char str2[20]={0};
   n = length(str1);
   for(i=0,j=n-1;j>0;j--,i++)
    {
     str2[i]=str1[j];
    }
   printf("\n Reverse of String is=%s",str2);
   for(i=0;str1[i]!='\0';i++)
   {
     if (str1[i]==str2[i])
     flag++;
   }
   if (flag==n)
   printf("\nString is Palindrome");
   else
   printf("\nString is not a Palindrome");
   }
  void compare(char str1[20])
   {
    char str2[20];
    int i,a,n,flag=0;
    n = length(str1);
    printf("Enter the 2nd string for Comparision\n");
    scanf("%s",str2);
    a=length(str2);
    if(n==a)
     {
       for(i=0;str1[i]!='\0';i++)
	{
	 if (str1[i]==str2[i])
	 {
	   flag++;

	 }
	}
     }
     if(flag==n)
	printf("Strings are Equal\n");
   else
	printf("Strings are not Equal\n");
   }
 void copy(char str1[20])
 {
  char s1[20]={0};
  int i;
  for(i=0;str1[i]!='\0';i++)
   {
    s1[i]=str1[i];
   }
  printf("Copy of String is =%s\n",s1);
 }
 void reverse(char str1[20])
 {
  int i,n;
   n=length(str1);
   printf("\nLength = %d\n",n);
   printf("Reverse of a String is=\n");
   for(i=n-1;i>=0;i--)
   {
     printf("%c",str1[i]);
   }
 }
 void substring(char str1[20],char str2[20])
 {
  int i,j,n,a,count=0;
   n = length(str1);
   a = length(str2);
  if(a>n)
   {
    printf("Substring cannot be found");
   }
  else
  {
   j=0;
    for(i=0;str1[i]!='\0';i++)
   {
     if (str2[j]==str1[i])
      {
       count++;
       j++;
      }
   }
 }
 if(count==a)
 printf("String2 is substring of String1\n");
 else
 printf("String2 is not substring of String1\n");
 }
 void concatinate(char str1[20],char str2[20])
 {
  int i,n,a;
  char str3[40]={0};
  n = length(str1);
  a = length(str2);
   for(i=0;str1[i]!='\0';i++)
   {
     str3[i]=str1[i];
   }
  for(i=0;str2[i]!='\0';i++)
   {
    str3[n]=str2[i];
    n++;
   }
  printf("Concatination is=%s\n",str3);
 }
