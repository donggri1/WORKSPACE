package days07;

import java.util.Iterator;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오후 3:31:10
 * @subject
 * @content
 */
public class Ex08 {

	public static void main(String[] args) {
		// 계차 수열
		// 항의 갯수가 20개 까지의 합
		// 1+2+4+7+11+16+22 ...??? =???
		// 1 2 3 4 5    계차 (defference)
		int term = 1;
		int sum = 0; 
		int defference = 0;
		
		for (int i = 1; i <=20; i++) {
			term +=defference;
			System.out.printf("%d+",term);
			defference++;
			sum+=term;
		}
		System.out.printf("=%d\n",sum);
		//1+~값을 a에 더하자 = for
//		
//		System.out.printf("%d+",term);
//		
//		
//		System.out.printf("%d+",i);
//		isum= i+term;
			
			
		
		
		

	}//main

}//class
