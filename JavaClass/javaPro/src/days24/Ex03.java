package days24;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오전 11:41:26
 * @subject
 * @content
 */
public class Ex03 {
	public static void main(String[] args) {
		/*
		 * [중첩 클래스와 중첩 인터페이스]
		 * 1. 클래스와 클래스 간의 관계
		 * 	has-a관계 ( 포함 관계 ) Car - Engine
		 *  is-a 관계 ( 상속 관계 )
		 *  
		 *  2. 가정 )
		 *  	어떤 클래스가 특정 클래스와 관계가 있다면 
		 *  		Engine			Car
		 *  Car 클래스 내부(안)에 Engine클래스를 선언한다.
		 *  
		 *  3. 중첩 (Nested) 클래스 
		 *  4. 장점
		 *   1) 두 클래스의 멤버들을 서로 쉽게 접근 할 수 있다.
		 *   2) 불필요한 관계 클래스를 감춤으로써 코드의 복잡성을 줄일 수 있다.
		 *  5. 중첩 클래스의 종류 : 선언 위치에 따라 구분
		 *   1) 클래스의 멤버 선언
		 *   	(1) 인스턴스 멤버클래스 
		 *   	(2) 정적(static) 멤버 클래스
		 *   2) 메서드 내부 선언
		 *   	(3) 로컬 클래스 - 메서드가 실행 될 때만 사용할 수 있다.
		 * 	
		 * 		(4) ***익명(==무명, Anonymous)클래스 *** 
		 *   
		 *  
		 */
		
		
		
	}//main
}//class

class A{
	//필드

	private int age;
	
	void disp() {
		
		// 메서드 안에 선언된 클래스 : 로컬 클래스
		// 로컬 클래스는 접근 지정자를 사용할 수 없다.
		class D {
			// static 필드, 메서드는 선언할 수 없다.
			D(){}
			
			int d1;
			void test() {
				
			}
			
		} // class D
		
		D obj = new D();
		obj.test();
		
	}// disp method
	
	// (2) 정적(static) 멤버 클래스
	// 모든 필드, 메서드 선언할 수 있다.
	public static class C{
		C(){} // 생성자
		
		int c1; // 인스턴스 변수
		static int sc1; //클래스 변수
		
		void test1() {} // 인스턴스 메서드
		static void test2() {} // 클래스 메서드
		/*[ 사용 예제 코딩 ]
		 * 
		 * A.C c = new A.C ();
		 * c.c1 = 100;
		 * c.test1();
		 * 
		 * A.C.sc1 = 100;
		 * A.C.test2();
		 */
	}
	// (1) 인스턴스 멤버 클래스
	// A 객체가 생성되어 야지 B 중첩 클래스를 사용할 수 있다.
	public class B {
		B(){} // 생성자
		int b1; // 필드
		void test() {} //메서드
		// static 필드, 메서드 선언할 수가 없다.
		/* [ 사용 예제 코딩 ]
		 * A a = new a();
		 * A.B b = a.new B();
		 * b.b1 = 100;
		 * b.test();
		 */
	}
	
}









