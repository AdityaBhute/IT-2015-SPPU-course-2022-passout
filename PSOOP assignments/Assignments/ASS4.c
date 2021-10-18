#include<stdio.h>

int isprime(int z)
{
int i,count=1;
for(i=2;i<z;i++)
	{
	if(z%i==0)
		{
		count++;
		}

	}
if(count<=2)
{
printf("it is prime\n");

}
}
int gcd(int a, int b)
{
 if(b==0)
 return a;
 else
	gcd(b,a%b);

}


int main()
{
int n,p,q,nq,e=2,d,m,c,x,k;

printf("\nEnter the two prime number");
scanf("%d%d",&p,&q);
isprime(p);
isprime(q);

printf("\nEnter the MSG: " );
scanf("%d",&m);
n=p*q;
nq = (p-1)*(q-1);
while(e>1<nq)
{
	if(gcd(e,nq)==1)
        	break;
	else
		e++;
printf("value of e : %d",&e);	
}
 
   d=(1+(k*nq)/e);



c=m^e % n;
printf("\nEncrypted MSG is %d",c);



x=c^d % n ;
  printf("\nDecrypted MSG is %d",x);
}
