/*06.	Write a program that takes radius of a circle as input. Read the entered radius
 using Scanner class. Then calculate and print the area and circumference of the circle.*/
import java.util.*;
class Que6
{
	public static void main(String args[])
	{
		Scanner sc= new Scanner(System.in);
		System.out.println("Enter the radius ");
		double radius=sc.nextDouble();
		double area= Math.PI*(radius * radius);
		System.out.println("area of circle : "+area);
		double circumference= Math.PI * 2 * radius;
		System.out.println("circumference of circle : "+circumference);	
	}
}