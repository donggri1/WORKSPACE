package days17;

public class Ex01 {

	public static void main(String[] args) {
		

	}//main

}//class

/*
class Parent{
	void test1() {}
	//상속된 후
	//자식클래스에서 재정의 할 수 없는 메서드
	final void test2() {}
	
}

class Chile extends Parent{
	@Override
	void test1() {System.out.println("재정의 test1");}
	
	
	//Cannot override the final method from Parent
	//@Override
	//void test2() {System.out.println("재정의 test2");}	
}
*/

//최종(마지막) 클래스
final class FinalTest{
	//2. 인스턴스변수(상수로변환가능)
	//The blank final field MAX_SIZE may not have been initialized
	//public final int MAX_SIZE= 10;// 명시적 초기화
	public final int MAX_SIZE;// 명시적 초기화
	
	public FinalTest( int maxSize ) { // 생성자 초기화
		this.MAX_SIZE = maxSize;
	}
	//3. 클래스+ 상수 변수(static이 붙어있으면 클래스 변수 클래스 생성과 동시에 매모리에 올라감)
	public static int MIN_SIZE;
	
	void test1() {
		// 1.지역변수(상수)
		double PI = 3.14;
		
		test2(100);
	}
	//			매개변수,지역변수
	void test2(final int size) {
		// size = 200; X
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}