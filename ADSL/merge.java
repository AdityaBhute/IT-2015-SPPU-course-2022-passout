import java.io.*;
import java.util.*;
class Sort
{
	public int c[] = new int[20];
	int a[];
	int b[];
	
	
	void merge_sort(int n1,int n2)
	{
		a = new int[n1];
		b = new int[n2];
		//int c[] = new int[n1+n2];
		
		int i,j,k;
		Scanner n= new Scanner(System.in);
		System.out.print("Enter sorted elements in array 1: ");
		for(i=0;i<n1;i++)
		{
			a[i]=n.nextInt();
		}

		System.out.print("Enter sorted elements in array 2: ");
		for(i=0;i<n2;i++)
		{
			b[i]=n.nextInt();
		}
		i=j=k=0;

		while (i <n1 && j < n2)
    		{
        		if (a[i] < b[j])
       	 		{
            			c[k] = a[i];
            			i++;
        		}
        		else
        		{
            			c[k] = b[j];
            			j++;
        		}
       	 		k++;
    		}

    		while (i!=n1)
    		{
        		c[k] = a[i];
        		i++;
        		k++;
    		}

    		while (j!=n2)
    		{
        	c[k] = b[j];
       	 	j++;
        	k++;
    		}
    	}
    	
    	    void display(int n3)
		{
			System.out.println("Merged array is--> ");
			for(int i=0;i<n3;i++)
			{
				
				System.out.print(" "+c[i]);
				
				
			}
		}
	}
	
class merge
{	
	public static void main(String args[])
	{
		int n1,n2,n3;
		Sort s = new Sort();
		Scanner in =  new Scanner(System.in);
		System.out.println("\nEnter number of elements in array 1: ");
		n1 = in.nextInt();
		System.out.println("\nEnter number of elements in array 2: ");
		n2 = in.nextInt();
		
		s.merge_sort(n1,n2);
		n3=n1+n2;
		s.display(n3);
	
	}
}
	
	

	
