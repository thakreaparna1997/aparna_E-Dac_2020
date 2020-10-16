/*12.	In a company an employee is paid as under: If his basic salary is less than Rs.10000, 
then HRA = 10% of basic salary and DA = 90% of basic salary. If his salary is either equal 
to or above Rs. 10000, then HRA = Rs. 2000 and DA = 98% of basic salary. If the employee's
 salary is input by the user write a program to find his gross salary.
 [ formula : GS= Basic + DA + HRA ]*/

import java.util.Scanner;
class Que12 
{
    public static void main( String[] args ) 
    {
        double Basic_Salary, DA, HRA, Gross_Salary;
        Scanner reader = new Scanner(System.in);
        
        System.out.println("Enter Basic Salary : ");
        Basic_Salary = reader.nextDouble();
	if(Basic_Salary < 10000)
	{
        
        DA = (Basic_Salary * 90) / 100;
        HRA = (Basic_Salary * 10) / 100;
        Gross_Salary = Basic_Salary + DA + HRA;
        }
	else
	{
	DA = (Basic_Salary * 98) / 100;
	HRA=2000;
        Gross_Salary = Basic_Salary + DA + HRA;
		
	}
        System.out.println("Gross Salary : " + Gross_Salary);
    }
}