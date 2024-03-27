package days16;

import java.io.IOException;

/**
 * @author LEE
 * @date 2024. 1. 22. - 오후 12:28:10
 * @subject 오버로딩(overloading)과 오버라이딩(overrideing)
 * @content 중복함수				재정의함수
 * 			drawLine()
 * 			drawLine(int n)
 * 			drawLine(int n,Style s)
 * 
 * 			오버라이딩(재정의 함수)? Super 클래스로부터 
 * 			상속받은 메서드를 재정의한 것.
 * 			- Override 사전적 의미 == overwrite == 위에 덮어쓰다.
 * 			
 * 			[오버라이딩의 조건]
 * 			1. 메서드명 수정 X
 * 			2. 매개변수 동일
 * 			3. 리턴타입 동일
 * 			4. 접근지정자는 부모의 접근지정자 범위보다
 * 				같거나 넓어야 된다.
 * 			5. 부모의 메서드보다 많은 수의 예외를 선언할 수 없다.
 * 			6. 부모가 인스턴스 메서드 	<->		자식은static메서드 변경 X
 * 
 */
public class Ex07 {

	public static void main(String[] args) {

			

	}// main

}//class

class Parent {
	
	int print(String n, int a)throws IOException {
		return 100;
	}
	
}
class Child extends Parent {
	
	@Override
//X	protected int print(String n, int a)throws IOException,NullPointerException {
//X	protected static int print(String n, int a)throws IOException {
	protected int print(String n, int a)throws IOException {
		return 100 +a;
	}
	//@Override
	//오버로딩
	/*
	int print(String n) {
		return 100;
	}
	*/

	
}











