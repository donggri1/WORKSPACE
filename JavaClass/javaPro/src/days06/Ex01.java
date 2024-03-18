package days06;

import java.util.Scanner;

public class Ex01 {

	public static void main(String[] args) {

		int a,b,c;
		try {Scanner sc = new Scanner(System.in);

		System.out.println("정수 a_b_c 입력?");
		a=sc.nextInt();
		b=sc.nextInt();
		c=sc.nextInt();
		
		int max = Math.max(a, b);
		max=Math.max(max, c);
		// max = Math.max(max,d);
		
		int min = Math.min(Math.min(a, b), c) ;
		//Math.pow(3,2); // double
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		 
		//[2]
//		int max = a>b?a>(c? a : c : b) > (c?b:c);
		

	}

}
