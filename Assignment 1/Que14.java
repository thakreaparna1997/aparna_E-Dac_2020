/*14.	Program to check that entered year is a leap year or not.*/
import java.util.*;

class Que14{
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the year");
        int year = sc.nextInt();
        if((year%4==0 && year%100!=0) || (year%4==0 && year%400==0))
        {
            System.out.println(year+" is a leap year");
        }
        else
        {
            System.out.println(year+" is not a leap year");
        }
               
    }
}