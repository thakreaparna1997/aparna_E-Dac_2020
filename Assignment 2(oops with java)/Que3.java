import java.util.Scanner;

class Que3
   {
         void getSum(int n)
          {
int c;
int c1;
               for(int i=1;i<n;i++)
                 {
                     if(i%2==0){
                     c=i*i;
System.out.println(c);
                     }
                     else{
                     c1=i*i*i;
System.out.println(c1);
                   }
  }
}
}
class Hello
{
  public static void main(String args[])
  {
     Scanner sc=new Scanner(System.in);
int n=sc.nextInt();
     Que3 p=new Que3();
p.getSum(n);
   }
}
