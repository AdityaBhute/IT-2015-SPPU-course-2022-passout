import java.util.Scanner;
class Exp
{
	public static void main(String args[])
	{
		int res,a,b;
		Scanner input = new Scanner(System.in);
  		System.out.println("Input two integers");
 
  		a = input.nextInt();
  		b = input.nextInt();
		try
		{
			if(b==0)
			{
				res=a/b;
				
			}
			else
			{
				res=a/b;
				System.out.println("Division ="+ res);
			
			}
		}
		catch (ArithmeticException e) 
		{
      			System.out.println("Division by zero.");
    		}
    		finally
    		{
    		}
	}
}
