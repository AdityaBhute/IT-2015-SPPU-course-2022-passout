#include<stdio.h>
void bubble( )
{
	int i, j, a[10], temp, n;
	printf ("enter size of the array\n") ;
	scanf ("%d",&n) ;
	printf ("enter array elemnt\n") ;
	for (i=0; i<n; i++)
	scanf ("%d", &a[i]) ;
	for (i=0; i<n-1; i++)
	for (j=0; j<n-1; j++)
	if (a[j+1]>a[j])
	{
		temp=a[j] ;
		a[j]=a[j+1] ;
		a[j+1]=temp ;
	}
	printf ("sorted array in decending order are\n") ;
	for(i=0; i<n; i ++)
	printf ("%d\t\n", a[i]) ;

}
void select()
{
	int s,i,j,temp,a[20];

  	printf("Enter total elements: ");
  	scanf("%d",&s);

  	printf("Enter %d elements: ",s);
 	for(i=0;i<s;i++)
      		scanf("%d",&a[i]);

  	for(i=0;i<s;i++)
	{
      		for(j=i+1;j<s;j++)
		{
           		if(a[i]>a[j])
			{
              			temp=a[i];
              			a[i]=a[j];
              			a[j]=temp;
           		}
      		}
  	}
	printf("After sorting acending order is: ");
  	for(i=0;i<s;i++)
      		printf(" %d\t",a[i]);

  	
	
}
void main()
{	
	int p,iss,a[10],i,n,s;
	p=fork();
	if(p>0)
	{
		bubble();
		wait();
	
		for(i=0; i<n; i ++)
			printf ("%d\t\n", a[i]) ;
	}
		
	else if(p<=0)
	{
		select();
		for(i=0;i<s;i++)
      			printf(" %d\n",a[i]);
	}
	else
		printf("forking error");


}
