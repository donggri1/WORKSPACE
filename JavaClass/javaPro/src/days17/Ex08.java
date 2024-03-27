package days17;

/**
 * @author LEE
 * @date 2024. 1. 23. - 오후 12:42:48
 * @subject
 * @content
 */
public class Ex08 {

	public static void main(String[] args) {
		// 클래스들 간의 관계
		// 1) has-a 관계( 포함관계 ) ***
		// 2) is-a 관계 ( 상속관계 )

		// (인터페이스의 사용 장점)
		// Car 클래스 + Engine 클래스 + 인터페이스 사용

		Engine engine = new H_Engine();
		Car myCar = new Car(engine);
		myCar.speedUp(0);
		
		//5년 타다가 엔진 고장
		myCar.setEngine(new K_Engine());
		myCar.speedUp(10);
		
		//2024년	H_Engine, K_Engine 2개엔진
		//2029년	S_Engine
		
		myCar.setEngine(new S_Engine());
		myCar.speedUp(10);
		
		
	}//main

}// class
