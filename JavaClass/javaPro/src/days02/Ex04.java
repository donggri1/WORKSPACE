package days02;

/**
 * @author LEE
 * @date 2024. 1. 2. - 오전 11:22:43
 * @subject 자바 자료형
 * @content - String %s, double%, char, int ,
 */
public class Ex04 {

	public static void main(String[] args) {

		/*
		 * Q.[자료형] == Data Type(데이터 형식)
		 * 1. Data(값) + Type( 종류)
		 * 2. 자료형이란? 값이 저장될 공간의 크기와
		 * 				  저장 형식을 정의한 것
		 * 3. 자바형 자료의 종류
		 * 	1)기본형(primitive Type)- 8가지의 기본형이 있다.
		 * 		(1) 숫자형
		 * 			ㄱ.정수계열 - byte(1), short(2), [int(4)], long(8)
		 * 				    문자 자료형    char(2) 'A'		 
		 * 
		 * 			 1byte = 8bit
		 * 			 1bit	 [0],[1] 2 가지
		 * 			 2bit 00,01,10,11 4가지
		 * 			 3bit 000~111 2^3 8가지
		 * 			 8bit		  2^8 256가지
		 * 
		 * 			 byte 정수 표현 범위 : -128 ~ 127
		 * 			 short 정수 표현 범위 : - -32768 ~ 32767
		 * 					2^16 == 65536 가지
		 * 			
		 * 			 int 정수 표현범위 : -2,147,483,648~2,147,483,647 ,21억 ~ 21억
		 * 					2^32 ==4,294,967,296 (42억)
		 * 			 long 정수 표현범위 : -9,223,372,036,854,775,808~ 9,223,372,036,854,775,807 - 900경 ~ 900경
		 * 					2^64 ==18,446,744,073,709,551,616가지 (1800경)
		 * 			ㄴ.실수계열 - [double(8)], float(4)
		 * 		(2) 논리형(boolean 1) - 참(true),거짓(false)
		 * 	2)참조형(Reference Type) -배열(Array),클래스, 인터페이스
		 */
		
		//성별을 나타내는 변수 선언 : 남자(true),여자(false)
		boolean gender = true;
		System.out.printf("성별 : %b \n",gender);
		
		// 사람의 나이를 저장할 변수 age 선언하세요.
		byte age;// [] [][] [] 0~125
		// 한 학생의 국어 점수를 저장할 변수 kor 선언하세요
		byte kor;// 정수 0~100
		//다른 언어 : byte 256가지 표현 -128~127 정수
		//부호 X						0~ 255 정수
		
	}//main

}//class
