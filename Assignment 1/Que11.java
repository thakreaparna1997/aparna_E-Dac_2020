/*11.	Write a program to swap two numbers without using third variable.*/
import java.util.*;  
class Que11   
{  
    public static void main(String a[])   
    {   
        System.out.println("Enter the value of x and y");  
        Scanner sc = new Scanner(System.in);   
        int x = sc.nextInt();  
        int y = sc.nextInt();  
        System.out.println("before Swapping: "+x +" "+ y);  
        x = x + y;   
        y = x - y;   
        x = x - y;   
        System.out.println("After swapping: "+x +"  " + y);   
    }   
}  