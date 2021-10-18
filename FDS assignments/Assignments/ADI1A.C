#include<stdio.h>
#include<conio.h>
void main()
{
  int ch,m,n,i,s1[10],s2[10],k=0,s3[10],j,flag;
  clrscr();
  do
  {

  printf("set operation\n");
  printf("1. create\n");
  printf("2. displsy\n");
  printf("3. union\n");
  printf("4. intersecion\n");
  printf("5.difference s1-s2\n");
  printf("6.difference s2-s1\n");
  printf("7.symmetric difference\n");
  printf("8.exit\n");
  printf("enter your choice:");
  scanf("%d",&ch);
  switch(ch)
  {
   case 1:printf("\n enetr no of elements for set 1:");
	  scanf("%d",&m);
	  printf("enter values:");
	  for(i=0;i<m;i++)
	  {
	    scanf("%d",&s1[i]);
	  }
	  printf("\n enter no  of elements for set 2:");
	  scanf("%d",&n);
	  printf("enter values:");
	  for(i=0;i<n;i++)
	  {
	    scanf("%d",&s2[i]);
	  }
	  break;



   case 2:printf("set 1");
	  printf("{");
	  for(i=0;i<m;i++)

	   {
	      printf("%d", s1[i]);
	   }
	  printf("}");
	  printf(" set2=");
	  printf("{");
	  for(i=0;i<n;i++)
	   {
	      printf("%d",s2[i]);
	    }
	  printf("}");
	  break;

   case 3:printf("union is ");

	    for(i=0;i<m;i++)
	   {
	     s3[k]=s1[i];
	     k++;
	   }


	    for(j=0;j<n;j++)
	    {
	      flag=0;
	      for(i=0;i<m;i++)
	      {
		if(s3[i]==s2[j])
	       {
		flag=1;
		break;
	       }
	       }
		 if(flag==0)
		 {
		   s3[k]=s2[j];
		   k++;
		 }
	       }
	       printf("{");
	       for(i=0;i<k;i++)
	       {
	       printf("%d",s3[i]);
	       }
	       printf("}");
	  break;
   case 4:printf("intersecion is");
	     k=0;

	    for(j=0;j<n;j++)
	    {
	      flag=0;
	      for(i=0;i<m;i++)
	      {
		if(s2[i]==s1[j])
	       {
		flag=1;
		break;
	       }
	       }
		 if(flag==1)
		 {
		   s3[k]=s1[j];
		   k++;
		 }
	       }
	       printf("{");
	       for(i=0;i<k;i++)
	       {
	       printf("%d",s3[i]);
	       }
	       printf("}");

	  break;
   case 5:printf("difference is ");
	  for(j=0;j<m;j++)
	  {
	    flag=0;
	    for(i=0;i<n;i++)
	    {
	      if(s1[i]==s2[j])
	      {
		flag=1;
		break;
	       }
	    }
	      if(flag==0)
	      {
		s3[k]=s1[j];
		k++;
	      }
	    }
	    printf("{");
	       for(i=0;i<k;i++)
	       {
	       printf("%d",s3[i]);
	       }
	       pritf("}");
	       break;
	  case 6:    printf("difference is s2-s1=");
		for(j=0;j<m;j++)
	  {
	    flag=0;
	    for(i=0;i<n;i++)
	    {
	      if(s1[j]==s2[i])
	      {
		flag=1;
		break;
	       }
	    }
	      if(flag==0)
	      {
		s3[k]=s1[j];
		k++;
	      }
	    }
	    printf("{");
	       for(i=0;i<k;i++)
	       {
	       printf("%d\n",s3[i]);
	       }
	       printf("}");
	  break;
   case 7:printf("symmetric difference is s1-s2=");
	  for(j=0;j<m;j++)
	  {
	    flag=0;
	    for(i=0;i<n;i++)
	    {
	      if(s1[i]==s2[j])
	      {
		flag=1;
		break;
	       }
	    }
	      if(flag==0)
	      {
		s3[k]=s1[j];
		k++;
	      }
	    }
	       for(i=0;i<k;i++)
	       {
	       printf("%d",s3[i]);
	       }
	       printf("symmetric difference is s2-s1=");
		for(j=0;j<m;j++)
	  {
	    flag=0;
	    for(i=0;i<n;i++)
	    {
	      if(s1[j]==s2[i])
	      {
		flag=1;
		break;
	       }
	    }
	      if(flag==0)
	      {
		s3[k]=s1[j];
		k++;
	      }
	    }
	    printf("{");

	    {

	       for(i=0;i<k;i++)
	       {
	       printf("%d",s3[i]);
	       }
	    printf("}");
	  break;
   case 8:exit(0);
    }
   }
  while(ch!=7);

 getch();
 }




