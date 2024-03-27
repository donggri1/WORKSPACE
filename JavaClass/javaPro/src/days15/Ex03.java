package days15;

public class Ex03 {

	//field
	String name ;
	int age;
	
	//디폴트 생성자 (default constructor)
	public Ex03() {
		System.out.println("> Ex03 Default Constructor...");
		name = "익명";
		age=20;
	}
	public Ex03(String n, int a) {
		System.out.println("> Ex03 2 Constructor...");
		name = n;
		age=a;
	}
	public Ex03(String n ) {
		System.out.println("> Ex03 1 Constructor...");
		name = n;
		age=20;
	}
	
	//main 함수는 실행할 때 호출된다
	// java.exe Ex03 실행 -> main()실행
	public static void main(String[] args) {
		/*
		 * [시험1] 생성자(Constructor)
		 * 1. 일종의 메서드이다.
		 * 2. 메서드명 == 클래스명
		 * 3. 리턴자료형을 사용하지 않는다. return 문 x
		 * 4. 매개변수 없는 생성자를 디폴트 생성자라고 한다.
		 * 	(Default Constructor)
		 * 5. 접근지정자를 사용할 수 있다.
		 * 	  기타제어자 X
		 * 6. 호출 시점 : 인위적으로 호출할 수 없다. 
		 * 					객체가 생성될 때 자동으로 호출된다.
		 * 7. 생성자의 역할 :
		 * 			객체 생성 -> 자동으로 생성자 호출 -> 필드 초기화 역할.
		 * 8. 생성자는 오버로딩(overloading) 할 수 있다.
		 *    오버로딩 의미? ....==중복함수
		 *    예)drawLine()
		 *    예)drawLine(int n)
		 *    예)drawLine(int n, String style)
		 * 
		 * 9. 클래스 선언 시 생성자를 1개라도 선언되지 않으면 
		 * 	  컴파일러가 자동으로 디폴트 생성자를 추가해서
		 * 	  컴파일 한다.
		 * 10.생성자는 상속되지 않는다.(암기)
		 * 
		 */
		
		
		/*
		//The method Ex03() is undefined for the type Ex03
		//Ex03(); //함수 호출 부분
		
		//객체 생성시 ()가있는 이유는 오버로딩된 함수중 필요한 함수를 자동으로 호출하기위해 있음
		//Ex03 obj = new Ex03();
		//System.out.println( obj.name );
		//System.out.println( obj.age );
		
		//The constructor Ex03(String, int, String) is undefined
		Ex03 obj = new Ex03("서영학",30,"부장");
		
		System.out.println( obj.name);
		System.out.println( obj.age);
		*/
		
		//Sample cannot be resolved to a type
//		Sample smaple = new Sample();
		
		System.out.println("end");
		
	}//main

}



class smaple{
	
	String name;
	
	public Sample(String s) {
		name = s;
	}
}