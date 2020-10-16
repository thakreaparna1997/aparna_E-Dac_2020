/*04.	Write a program that initializes 2 byte type of variables. Add the values of these
 variables and store in a byte type of variable. [Note: primitive down casting is required 
in this program ] .*/
import java.util.*;
class Que4{
    public static void main(String[] argv){

        byte a = 3;     
        byte b = 8;     
        byte result;
        result = (byte) (a + b); 

        System.out.println(result);
    }
}