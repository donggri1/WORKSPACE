package days04;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 2:21:04
 * @subject 정수를 입력받아서 입력받은 점수가
 * 			짝수(even number),라면 짝수 홀수(odd number)라면 홀수로 출력
 * 			if(){}else{}
 * @content
 */
public class Ex05_04 {

	public static void main(String[] args) {
		int n;

		try(Scanner scanner = new Scanner(System.in);) {
			System.out.print(">정수 (n) 입력? ");
			n = scanner.nextInt();
			String result = "홀수";
			if (n%2 == 0) {
				result = "짝수";
			}
			System.out.println(result);
			
		} catch (Exception e) {				
		}//try
		
		
		
		

	}//main

}
