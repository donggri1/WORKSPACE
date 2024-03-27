package days24;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오후 2:33:43
 * @subject
 * @content
 */
public class Ex06_03 {
	public static void main(String[] args) {
		// [ 제네릭의 제한 ]
		//
		
	}//main
}//class
	
class Box2<T>{
	// Cannot make a static reference to the non-static type T
	// [ 제네릭클래스의 첫 번째 제한 ]
	// 제네릭클래스에는 클래스변수(스테틱이붙은것,정적필드) 선언 X
	// 제네릭은 컴파일후에 static은컴파일전에 바로올라가니까 사용제한 
	//static T item2;
	
	// [ 제네릭클래스의 두 번째 제한 ]
	// 클래스 메서드 선언 + 매개변수 T 타입 사용
	// Cannot make a static reference to the non-static type T
	/*
	static int compare(T a , T b ) {
		
		return 0;
	}
	*/
	// T 타입의 배열은 선언할 수 있다.
	T [] itemArr;
   }