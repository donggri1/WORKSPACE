package days04;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 2:00:48
 * @subject	[제어문]
 * @content	1.정의 : 프로그램의 실행 순서를 제어하는 문
 * 			2.종류 : 
 * 				1) 조건문 : if 문 , if~else, if ~elseif elseif ~ else
 * 				2) 분기문 : switch 문
 * 				3) 반복문 : for 문, foreach 문
 * 				4) 조건반복문 : while 문, do~ while문
 * 				5) 기타	  : break문, continue문
 */
public class Ex05 {

	public static void main(String[] args) {

		// 1) 조건문 中 if문 예제.
		//		if 문의 선언 형식
		/*
		 * 	   condition : 조건식, ( 참/거짓으로 판가름할 수 있는 식 )
		 * 					변수(boolean)
		 * if (condition 참/거짓) {
			
		}
		
		if문은 condition 조건이 참일 경우에만 {}코딩블럭을 실행한다.
		*
		*/
		
		boolean b = false;
		//if(b == true) {
		//if(b) {
		//if(b == false) {
		if( !b ) { // !b
			System.out.println("1");
		}else
		System.out.println(" end ");

	}

}
