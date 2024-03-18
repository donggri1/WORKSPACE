package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오전 10:38:21
 * @subject [형 변환 설명
 * @content
 */
public class Ex01_02 {
	
	public static void main(String[] args) {
		
		/*
		 * [형변환]
		 * 1.정의? 변수 또는 상수의 자료형(타입)을
		 * 다른 자료형(타입)으로 변환하는 것.
		 * 2.예
		 * 	int->byte
		 * 	byte->int
		 * 	int->float
		 * 	double->int
		 * 	String->int
		 * 	String->double
		 * 	int->String
		 * 	char->String
		 * 	String->char
		 *  등등
		 * 3.형 변환하는 방법
		 * 	1) 자동 형변환 -2가지
		 * 	2) 강제 형변환
		 * 		ㄱ. 1경우
		 * 		ㄴ. 방법
		 * 			(변환하고자하는 자료형) cast 연산자
		 * 			cast 강제 형변환.
		 * 			3+  5*2 =13
		 * 				(1)
		 * 			3+	10
		 * 			(2)
		 * 
		 * 			(3+5)*2 () 최우선 연산자
		 * 		연산자 우선 순위 * > +
		 */

		byte b = 100;//[0][1][1][0][0][1][0][0]8비트
		//자동형변환 첫 번째 경우
		//좌측의 형자료형이 더크면 자동형변환,정수형보다 실수형이 더크다고 인식
		long l = b; //[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]
		System.out.println(l);
		double d = l; //[S][E][][][][][][][][][][][M][][][][][][][][][][][][][][][][][][][][]
		System.out.println(d);
		
//		int i= 100L; 자동형변환 X
		//Type mismatch: cannot convert from double to float
//		float f2=3.14F;
		
		
		int x = 100;
		long y= 100;
		//Type mismatch: cannot convert from double to float
		//				작은 자료형 연산 큰 자료형=>자동 큰 자료형
		long z = x+y;// [][][][] + [][][][][][][][]
		
		
		
	}

}
