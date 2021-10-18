/* 17. Find out area of rectangle and circle with an interface area and
   implements the same in 2 different classes rectangles and circle.
*/
interface Area
{
  final static float pi=3.14F;
  float compute(float x,float y);
}
 class rectangle implements Area
  {
   public  float compute (float x, float y)
   {
    return(x*y);
   }
  }
 class circle implements Area
 {
 public float compute(float x , float y)
 {
 return(pi*x*x); 
  }
}
class interfacetest
{
public static void main (String args[])
 {
  rectangle rect = new rectangle();
  circle cir = new circle();

  Area X;     //interface object
  X=rect;
  System.out.println("Area of rectan;" + X.compute(10,20));

   X= cir;
   System.out.println("Area of circle:" + X.compute(10,0));
  }
}
