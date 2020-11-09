import java.util.Scanner;
class Que2
{
    void getSum(int a1[],int n1)
     {
         for(int i=0;i<n1;i++)
          { 
int sum;
              sum=(a1[i]+a1[i+1]+a1[i+2])/3; 
System.out.println(sum);  
          }
     }
}
class Hello
{ 
    public static void main(String args[])
    {  
      Scanner sc=new Scanner(System.in);
      Que2 t1=new Que2();
System.out.println("Enter size");
int n1=sc.nextInt();
int a1[]=new int[n1];
      for(int i=0;i<n1;i++)
      {
        a1[i]=sc.nextInt();
}
     t1.getSum(a1,n1);
    }
 }
