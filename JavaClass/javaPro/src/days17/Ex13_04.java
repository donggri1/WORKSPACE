package days17;

import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 23. - 오후 3:32:52
 * @subject	[ 중첩 try~catch문 ] 설명
 * @content JDK 1.7 ~
 */
public class Ex13_04 {

	public static void main(String[] args) {
		int a = 0 , b= 0;
		Scanner scanner = new Scanner(System.in);
		//예외 처리 방법 중 1가지. try~ catch





		//ArithmeticException 5 / 0 
		/*
		if( b == 0) {	System.out.println("0으로 나누면 안됩니다.");
			return;}
		 */ 
		try {
			
			System.out.println("> a,b 두정수 입력?");
			// 1) InputMismatchException
			a = scanner.nextInt(); // 5
			b = scanner.nextInt(); // a
			
			// [ 중첩 try~catch문 ]
			try {
				double c = a / b; 	// 2) ArithmeticException
				System.out.printf("%d / %d = %.2f\n",a,b,c);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		} catch (InputMismatchException e) {
			System.out.println("[1]\n"+e.toString());
			System.out.println("[1]\n"+e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 예외의 발생 유무에 상관없이 처리할 구문
			// 파일, DB 열어서 사용 -> 파일,DB close()
			
			try {
				
			} catch (Exception e2) {
			
			}
			
		}


		System.out.println("=정상 종료=");




	}//main

}//class
