package days17;

public class Ex02 {

	public static void main(String[] args) {

		//추상클래스 - 공통적인 멤버를 가진 클래스 설계
		//				Employee
		//객체를 생성할 수 없는 일종의 클래스
//		Child c = new Descendant();
//		c.dispA();
//		c.dispB();
		
		//[업캐스팅]
		// 자식객체생성후 부모클래스참조
		Parent p = new Descendant();
		p.dispA();
		p.dispB();
		

	}//main

}//class

abstract class Parent{
	//필드
	//생성자
	//메서드
	//추상메서드 //body 몸체 {} 가 구현이 안된 메서드
	//			불완전한 메서드
	//			abstract 키워드
	abstract void dispA();
	abstract void dispB();
}
// //The type Child must implement the inherited abstract method Parent.dispA()
abstract class Child extends Parent{

	@Override
	void dispA() {
		System.out.println("> dispA()...");
	}

	//필드
	//생성자
	//메서드
}

class Descendant extends Child{

	@Override
	void dispB() {
		System.out.println("> dispB()...");
		
	}
	
}






















