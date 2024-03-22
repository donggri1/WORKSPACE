package days10;

import java.util.Arrays;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오후 2:30:11
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		
		/*
		 * [배열] + 제어문(for문)
		 * 1. 자료형
		 *    1) 기본형 - 8가지
		 *    2) 참조형 - [배열], 클래스, 인터페이스
		 * 2. 배열 정의 ? 
		 *    1000명의 국어점수 저장. => 변수 선언
		 *    int kor1;
		 *    int kor2;
		 *        :  
		 *    int kor1000;
		 *    동일한 자료형을 메모리 상에 연속적으로 놓이게 한 것.
		 * 3. 배열 선언 + 생성
		 *   자료형 [] 배열명 = new 자료형[배열크기]
		 *             변수
		 *             참조변수
		 *   그림~~
		 * 4. 배열크기 = 배열명.length
		 *    윗첨자값(UpperBound)   =   배열명.length-1
		 *    아랫첨자값(LowerBound) = 0
		 * 5. 0번째 요소 == 배열명[0]
		 *    1번째 요소 == 배열명[1]
		 *    
		 *                kors[0] = 20;
		 *                syso(kors[0]);
		 * 6. 배열 초기화
		 *   int [] kors = new int[]{ 89,23,43 };
		 *   int [] kors = { 89,23,43 };
		 *   
		 *                    int [] kors = new int[3];
		 *                    kors[0] = 89;
		 *                    kors[1] = 23;
		 *                    kors[2] = 43;
		 *  
		 *  String [] names = { "권맑음","구본혁", "류영은"};
		 *  double [] avgs = { 89.23, 48.22, 89.23 };
		 *  char [] grade = {  'C', 'D', 'A' };                  
		 * */
		
		int [] kors = { 89,23,43 };
		
		// for();
		// foreach();
		/*
		Arrays 클래스 : 배열을 사용하기 쉽도록 기능이 
		구현된 클래스
		*/
		// [89, 23, 43]
		System.out.println( Arrays.toString(kors) );
	} // main

} // class













