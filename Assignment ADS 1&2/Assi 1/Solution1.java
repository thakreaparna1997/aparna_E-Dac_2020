// Array Add And Delete 

import java.util.*;

public class Solution1
{
    public static void main(String[] args)
    {
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter the size of the array");
        int n=sc.nextInt();

        int arr[]=new int[n];

        System.out.println("Enter Elements in the array");
        for(int i=0;i<n;i++)
        {
            arr[i]=sc.nextInt();
        }
        System.out.println("Elements in the array");
        for(int j=0;j<n;j++)
        {
            System.out.print(arr[j]+" ");
        }
        
        
        

        System.out.println();
        System.out.println("Enter the number of index that you want to delete.");
        int j=sc.nextInt();
        int[] arr_new = new int[arr.length-1];
        for(int i=0, k=0;i<arr.length;i++)
        {
            if(i!=j)
            {
                arr_new[k]=arr[i];
                k++;
            }
        }
        System.out.println("Before deletion :" + Arrays.toString(arr));
        System.out.println("After deletion :" + Arrays.toString(arr_new));
        sc.close();
      
    }
}
