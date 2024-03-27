package days19;

import days15.Person;
import days15.Point;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 2:04:18
 * @subject
 * @content
 */
public class Ex07 {
	public static void main(String[] args) {
		// [ 자동(auto) boxing / unboxing ]
		// 	기본형 => 래퍼클래스 // 기본형을 사용하기 편하게만든것을 래퍼클래스
		int i = 100;
		// 오토 박싱
		Integer j = i; // J 객체	i 기본형
		//JDK 1.5 Integer j = new Integer(i);
		
		// j 객체 --> k 기본형 변환 ( 오토 언박싱 )
		int k = j;

		
		test(new Person());
		test(new Point());
		
		test(1);		// int -> 오토박싱 Integer ->Object
		test(true);		// boolean
		test(3.14);		// double
		test('a');		// char
		test("string");	//String 0 up casting
	}//main
	
	public static Object test(Object o) {
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
}//class
