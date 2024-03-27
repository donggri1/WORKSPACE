package days04;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오전 10:47:23
 * @subject	[] 인덱스(index)연산자 설명
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {

		// String[] args : [] 인덱스(index)연산자
		//1. 한 학생의 국어 점수를 저장할 kor 변수 선언
		//byte kor;
		//2. 10명 학생의 국어 점수를 저장할 변수 선언.
		//int kor01,kor02,kor3,kor10;
		
		//배열 정의 ?
		//  ㄴ동일한 자료형을 메모리 상에 연속적으로 놓이게 한 것
		// 배열 장점
		//	 ㄴ 관리 용이
		// 배열 선언 형식
		//	 ㄴ 자료형 [] 변수명/참조변수/배열명= new 자료형[배열크기];
		
		//int 배열 kors
		int [] kors = new int[3];
		//배열의 크기 알아오는법 배열명.length
//		int korr []; 뒤에도 가능
		// new 자료형[배열의 크기(갯수)];
		System.out.printf("> 배열 크기 :  %d\n",kors.length);
		// 1번 학생의 국어 점수 : 90
		// 첫 기억공간 : 0번째 요소			배열명[0] kors[0]
		// 두번째 기억공간 : 1번째 요소
		kors[0] = 90;
		kors[1] = 78;
		kors[2] = 89;
		
		System.out.println( kors[0]);
		System.out.println( kors[1]);
		System.out.println( kors[2]);
		//index 첨자값
		//lowerBound 아래첨자값	0
		//upperBound 윗첨자값	2 = 배열크기-1 = 배열명.length -1
		
		//ArrayIndexOutOfBoundsException
		//kors[3] = 100;
		

		kors = null;
		//NullPointerException
		kors[0]=90;
		
		
	} // main

} //class
