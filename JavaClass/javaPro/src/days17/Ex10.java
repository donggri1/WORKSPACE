package days17;
/**
 * @author LEE
 * @date 2024. 1. 23. - 오후 2:33:00
 * @subject
 * @content
 */
public class Ex10 {

	public static void main(String[] args) {
		// 인터페이스 멤버
		// 	ㄴ	상수
		//	ㄴ	추상메서드
		
		// JDK 1.8 이후
		//	ㄴ default 메서드 ***
		//	ㄴ static  메서드
		
		// 5년 지난 후..
		// 1) 디폴트 메서드와 클래스의 메서드가 충돌나면
		// 		=> 디폴트 메서드는 무시가 된다.
		// 2) 여러 인터페이스를 구현하다보면
		// 디폴트 메서드와 충돌나면
		//		==> 충돌나는 디폴트 메서드를 오버라이딩하면 해결.
		
	}//main

}//class

interface Ia{
	// 3개의 추상메서드 선언.(가정)
	
	// 5년 지난 후... 추상메서드 추가.- 오버라이딩(재정의)안하면 오류
	default void fiveTest() {
		System.out.println("몸체구현 완벽한 메서드");
	}
	//
	static void staticTest() {
		System.out.println("몸체 구현");
	}
}

interface Ib{
	// 1개의 추상메서드 선언.(가정)
}

interface Iab extends Ia,Ib{	
	// 3개의 추상메서드 선언.(상속)(가정)
	// 1개의 추상메서드 선언.(상속)(가정)
	// 1개의 추상메서드
}

class Aa implements Ia{
	// 3개의 추상메서드 오버라이딩(재정의)
	
}
class Bb extends Aa{
	// 3개의 추상메서드 오버라이딩(재정의)
}

class Cc implements Iab{
	// 3개의 추상메서드 오버라이딩(재정의)
	// 1개의 추상메서드 오버라이딩(재정의)
	// 1개의 추상메서드 오버라이딩(재정의)
	
}


















