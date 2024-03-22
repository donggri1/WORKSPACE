package days06;

import java.util.Iterator;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 12:02:24
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {
//		2. 정수를 10개 저장할 배열 m 을 선언하고 5<= n && n <= 15 
//			범위의 임의의 정수로 채워넣은 후 배열의 각 요소를 출력하는 코딩을 하세요.
		
		//1)배열 선언
		int [] m = new int [10];
		
		//2) 5~15
						
		
		//3 배열의 각 요소를출력하는 코딩
		for (int i = 0; i < m.length; i++) {
			m[i] =(int)(Math.random()*11)+5;
			System.out.printf("m[%d]=%d\n",i,m[i]);
			
		}//for
		int max = m[0];
		int min = m[0];
		
		for (int i = 0; i < m.length; i++) {
			max = Math.max(max, m[i]);
			min = Math.min(min, m[i]);
		}
		
		System.out.printf("max:%d, min : %d",max,min);
		
		//[추가문제 ] m배열의 가장 큰값 , 가장 작은값을 출력
		

		
		
	}//main

}//class
