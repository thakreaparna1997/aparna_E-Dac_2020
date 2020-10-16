/*13.	Program to find greatest in 3 numbers. [ once using if else statement and then
 using ternary operator ( logical operator) ] */
import java.util.Scanner;  
class Que13b  
{  
public static void main(String[] args)   
{  
int a, b, c, largest;   
Scanner sc = new Scanner(System.in);  
System.out.println("Enter the first number:");  
a = sc.nextInt();  
System.out.println("Enter the second number:");  
b = sc.nextInt();  
System.out.println("Enter the third number:");  
c = sc.nextInt();  
largest = c > (a > b ? a : b) ? c : ((a > b) ? a : b);  
System.out.println("The largest number is: "+largest);  
}  
}  