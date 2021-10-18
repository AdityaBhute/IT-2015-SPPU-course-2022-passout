/* 17. Find out area of rectangle and circle with an interface area and
   implements the same in 2 different classes rectangles and circle.
*/
package kkw;
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
