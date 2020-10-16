/*15Accept person’s gender (character m for male and f for female), age (integer),
 as input and then check whether person is eligible for marriage or not.*/
import java.util.*;
class Que15
{
	public static void main(String args[])
	{
		int age;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter your gender, m for male and f for female : ");
		int c = sc.next().charAt(0);

		System.out.println("Enter your age");
		age = sc.nextInt();
		if(c =='m')
		{
			if(age >= 21)
			{
				System.out.println("You are eligible for marriage");
			}
			else
			{
				System.out.println("You are not eligible for marriage");	
			}
		}
		else if(c =='f')
		{
			if(age >= 18)
			{
				System.out.println("You are eligible for marriage");
			}
			else
			{
				System.out.println("You are not eligible for marriage");	
			}
		
			
		}
	}
}