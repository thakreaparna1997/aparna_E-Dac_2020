/*10.	Write a program to convert temperature from Fahrenheit to Celsius. Take Fahrenheit
 as input using Scanner class. [ formula : C= 5*(f-32)/9 ]*/
import java.util.Scanner;
class Que10{

    public static void main(String[] Strings) {

        Scanner input = new Scanner(System.in);

        System.out.print("Input a degree in Fahrenheit: ");
        double fahrenheit = input.nextDouble();

        double  celsius =(( 5 *(fahrenheit - 32.0)) / 9.0);
        System.out.println(fahrenheit + " degree Fahrenheit is equal to " + celsius + " in Celsius");
    }
}

