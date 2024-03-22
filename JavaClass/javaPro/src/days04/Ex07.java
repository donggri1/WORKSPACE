package days04;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 4:52:51
 * @subject 분기문 : switch 문
 * @content
 */
public class Ex07 {

	public static void main(String[] args) {
		/*
		 * if( condition) 명령코딩;
		 * 
		 * 명령코딩 1줄인 경우에는 {}생략가능하다.
		 * 
		 * if (condition) 명령코딩;
		 * else			  명령코딩;
		 * 
		 * for(초기식;조건식;증감식) 명령코딩; // 1줄
		 * 
		 */
		/*
		key : 변수, 수식
		value: 리터럴(정수,문자,문자열),변수X
		
		switch (key) {
		case value:
			
			break;
		case value:
			
			break;

		default:
			break;
		}
		*/
		int n;
		
		try(Scanner scanner = new Scanner(System.in);) {
			
			System.out.print(">정수 (n) 입력? ");
			n = scanner.nextInt();
			
			final int ZERO = 0;
			
			switch ( n % 2) {
			case ZERO:
				System.out.println("짝수(even number)");
				break;

			case 1:
				System.out.println("홀수(odd number)");
				break;
				
			}//switch
			
			if (n%2 ==0) {
				System.out.println("짝수(even number)");
			}
			else { // 홀수 경우
				System.out.println("홀수(odd number)");
			}
		} catch (Exception e) {
			
		}
		
		
	}//main

}//class
