import java.util.*;
class Que5
{
   public static intnum(double d){

int count=0;
       while(d!=((int)d))
       {
         count++;
         d=d*10;
     }
    return count;
  }
   public static void main(String args[])
   {

int n;
       n=num(45.286);
System.out.println(n);
}
}
