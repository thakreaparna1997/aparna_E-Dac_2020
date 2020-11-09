import java.util.Scanner;
class Que1
{
  static void Merge(int arr1[],int arr2[],int arr3[],int n1,int n2){
int i=0,j=0,k=0;
   while(i<n1 && j<n2){ //traverse the arr
    arr3[k++]=arr1[i++];
    arr3[k++]=arr2[j++];
    }
   while(i<n1){
   arr3[k++]=arr1[i++];
   }
   while(j<n2){
   arr3[k++]=arr2[j++];
   }
}
    public static void main(String args[])
    {
         Scanner sc=new Scanner(System.in);

System.out.println("Enter Array1");
int n1=sc.nextInt();
int[]arr1=new int[n1];


        for(int i=0;i<n1;i++){
         arr1[i]=sc.nextInt();
          }
System.out.println("Enter Array2");
int  n2=sc.nextInt();
int []arr2=new int[n2];

         for(int i=0;i<n2;i++){
         arr2[i]=sc.nextInt();
         }
int arr3[]=new int[n1+n2];
         Merge(arr1,arr2,arr3,n1,n2);
System.out.println("Array after merging");
         for(int i=0;i<n1+n2;i++)
         {
System.out.println(arr3[i]+"  ");
         }
      }
    }
