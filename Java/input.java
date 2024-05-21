import java.util.Scanner;
public class input
{
   public static void main(String[] args)
     {
        Scanner x=new Scanner(System.in);
        int a,b,c;
        System.out.println("Enter values of a and b: ");
        a=x.nextInt();
        b=x.nextInt();
        c=a+b;
        System.out.println("Sum of a and b is: " +c);
     }
}