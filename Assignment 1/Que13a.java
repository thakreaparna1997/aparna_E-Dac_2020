import java.util.Scanner;  
class Que13a  
{  
public static void main(String args[])  
{  
int num1, num2, num3;  
System.out.println("Enter three integers: ");  
Scanner in = new Scanner(System.in);  
num1=in.nextInt();  
num2=in.nextInt();  
num3=in.nextInt();  
if (num1 > num2 && num1 > num3)  
System.out.println("The largest number is: "+num1);  
else if (num2 > num1 && num2 > num3)  
System.out.println("The largest number is: "+num2);  
else  
System.out.println("The largest number is: "+num3);  

}  
}  