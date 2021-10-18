import java.util.*;

class Shell
{
	private int a[] = new int[30];
	Scanner in = new Scanner(System.in);
	void insert(int n)
	{
		for (int i=0;i<n;i++) 
		{
			a[i] = in.nextInt();
		}
	}

	void shell_sort(int A[],int n)
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
				if(A[i]>A[i+gap])
				{
					temp=A[i];
					A[i]=A[i+gap];
					A[i+gap]=temp;
					swapped=1;
				}
		}while(swapped==1);
	}while((gap=gap/2)>=1);	
	
	}

	void display(int n)
	{
		for (int i=0;i<n;i++) 
		{
			System.out.println(" "+A[i]);
		}
	}
}


class Shell_sort
{
public static void main(String[] args) 
{
	int n;
	Shell s = new Shell();
	Scanner in = new Scanner(System.in);
	System.out.println("Enter number of elements: ");
	n = in.nextInt();
	System.out.print("Elements in the Array--> ");
	s.insert(n);
	s.sort(n);
	s.display(n);


}
}
