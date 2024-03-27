package days05;

import java.util.Iterator;
import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 5. - 오후 4:51:44
 * @subject
 * @content
 */
public class Ex10 {

	public static void main(String[] args) {
		/*
		int sum = 0;
		int n ;
		Scanner scanner= new Scanner(System.in);
		System.out.print(">n 입력 ?");
		n = scanner.nextInt();
				//1~10=55
		for (int i = 1; i <= n; i++) {
			sum+=i;
			System.out.printf("%d+",i);	
		}
		System.out.printf("=%d\n", sum);
		*/
		//[문제] 두 정수 n,m 입력받아서
		//두 정수 사이의 합을 출력하는 코딩 5~10
//		int m,n;
//		int sum=0;
//		Scanner scanner = new Scanner(System.in);
//		System.out.print("m_n의 값");
//		m=scanner.nextInt();
//		n=scanner.nextInt();
//		
//		for (int i = n ; i <= m ; i++) {
//			
//			sum+=i;
//			System.out.printf("%d",i);
//			
							
		//[2]
		
		//문제[3]
		
//		int min = n > m ? m : n;
		
		
		
		//[문제]
		// 두 정수 n , m 을 입력 받아서
		// 두 정수의 홀수의 합 출력 2 ~ 10  %2==1
		int sum = 0;
		int n,m;
		int min,max;
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("n_m의 값 입력");
		n=scanner.nextInt();
		m=scanner.nextInt();
		
		max = m > n ? m : n;
		min = n > m ? n : m;
		
		
		
		for (int i = min; i <= max; i++) {
			

			if (i%2!=0) {
				sum+=i;
				System.out.printf("%d+",i);
				
			}		System.out.printf("%d",sum);
		}

			
//			1 3 5 7 9 25
			
				
		
		
		
		
		
		}//main

}//class
