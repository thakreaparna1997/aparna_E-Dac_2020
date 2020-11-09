import java.util.*;
class Que4
{
public static void main(String args[])
  {
      Scanner sc=new Scanner(System.in);
System.out.print("Enter array elements");
int n=sc.nextInt();
int a[]=new int[n];
int count=0;
		for(int i=0;i<n;i++)
		{
			a[i]=sc.nextInt();
		}
		for(int i=0;i<n;i++)
		{
			System.out.print(a[i]+" ");
		}
		for(int i=0;i<a.length;i++)
		{
			for(int j=i+1;i<a.length;i++)
				if(a[j]>a[i])
				{
					count++;
				}
			
	    }
		int temp=1;
		if(count==1)
		{
			System.out.print("Ascending");
		}
		for(int i=0;i<a.length;i++)
		{
			for(int j=0;j<a.length;j++)
			{
				if(a[j]<a[i])
				{
				temp--;
				}
			}
		}
		if(temp!=1)
		{
			System.out.println("descending");
		}
  }
 }
