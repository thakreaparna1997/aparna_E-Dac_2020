/*07.	Write a program to calculate sum of 5 subject’s marks & find percentage. Take the
 obtained marks from user using Scanner class. Output should be in this format
 [ percentage marks = 99 % ]. Use concatenation operator here*/

import java.util.*;
class Que7
{
	public static void main(String args[])
	{
		int a,b,c,d,e;
		float percentage;
		float total= 500;
		Scanner sc=new Scanner(System.in);	
		System.out.println("enter subject marks");
		a=sc.nextInt();
		b=sc.nextInt();
		c=sc.nextInt();
		d=sc.nextInt();
		e=sc.nextInt();
		sc.close();
		percentage=((a+b+c+d+e)/total) * 100;
		System.out.println("Percentage marks= "+percentage+"%");
		
				
	}
}