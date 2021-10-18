import java.util.*;
class shell_update
{
	void shellsort(int A[],int n)
	{
		int temp,gap,i;
		int swapped;
		gap=n/2;
		do
		{
			do
			{
				swapped=0;
				for(i=0;i<n-gap;i++)
				{
					if(A[i] > A[i+gap])
					{
						temp=A[i];
						A[i]=A[i+gap];
						A[i+gap]=temp;
						swapped=1;
					}
				}
			}while(swapped==1);
		}while((gap=gap/2) >=1);
			
	}
	public static void main(String args[])
	{
		int n,i;
		int A[]=new int[10];
		System.out.println("Shell Sorting:");
		System.out.println("How many ele you want:");
		n = Integer.parseInt(System.console().readLine());
		//System.out.println("Number is"+n);
		System.out.println("Enter no of ele.");
		for(i=0;i<n;i++)
		{
			A[i]= Integer.parseInt(System.console().readLine());
		}
		shellsort obj=new shellsort();
		obj.shellsort(A,n);
		System.out.println("After Sorting:");	
		for (i = 0; i< n; i++)
		{
			System.out.println(""+A[i]);
		}
				
		
	}
}
