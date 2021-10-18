

/* 17. Find out area of rectangle and circle with an interface area and
   implements the same in 2 different classes rectangles and circle.
*/
/*
  md kkw
  cd kkw
  edit Pack1.java

package kkw;
public class Pack1
 {
   public  void add(double x,double y)
   {
   double z;
   z=x+y;
   System.out.println(" net payment  = "+z);
   }


    }
  save program
  compile it
  cd..
  edit interfacetest2.java
  */

import  kkw.*;
import  kkw.Pack1;
import java.io.*;
interface Emp
{
public  void getsal();
public  double compute();
}
 class manager implements Emp
  {
public  double sal,netpay;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
public  void getsal() 
  {
      try
      {
    System.out.println("Enter sal of Manager ");
    sal=Double.parseDouble(br.readLine());
    }
    catch(Exception e)
    {
     System.out.println("Error is "+ e);
    }
  }

   public   double compute ()
   {
    return(sal*.30);
   }
  }
 class worker implements Emp
  {
public  double sal,netpay;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

public  void getsal()
  {
      try
      {
    System.out.println("Enter sal of Worker ");
    sal=Double.parseDouble(br.readLine());;
    }
    catch(Exception e)
    {
   
    }
   
  }

   public  double compute ()
   {
    return(sal*.10);
   }
  }


class interfacetest2
{
public static void main (String args[])
 {
  worker w = new worker();
  manager m = new manager();

  Pack1 obj=new  Pack1();

  Emp X;     //interface object
  X=w;
  X.getsal();

  System.out.println("Bonus of Worker:" + X.compute());
  obj.add(w.sal,X.compute());

   X= m;
   X.getsal();
   System.out.println("Bonus of Manager:" + X.compute());
  obj.add(m.sal,X.compute());

   }
}
