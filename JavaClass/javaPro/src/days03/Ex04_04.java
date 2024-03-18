package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 12:48:11
 * @subject [논리연산자]
 * @content boolean형 참/거짓
 */
public class Ex04_04 {

	public static void main(String[] args) {

		/*
		 * 1. 일반 논리 연산자
		 * 	1) && 일반 논리  AND 연산자 (논리곱)
		 * 		피연산자 && 피연산자
		 * 			true && true	true
		 * 			true && false	false
		 * 			false && true	false
		 * 			false && false	false
		 * 
		 * 			두 피연산자가 참일 떄만 참이 된다.
		 * 			true  1
		 * 			false 0
		 * 			앞 항이 false일 경우 뒷 항을 체크하지않음.
		 */
		System.out.println( 3 >= 5 );// false
		System.out.println( 10 >= 5 );// true
		System.out.println( 3 >= 5 && 10 >= 5 ); //false
		System.out.println( 3 <= 5 && 10 >= 5 ); //true
		System.out.println( 3 <= 5 && 10 < 5 ); //false
		System.out.println( 3 >= 5 && 10 < 5 ); //false
		
		/* 	2) || 일반 논리 OR 연산자 (논리합)
		 *		항 || 항
		 *		true || true   true
		 *		true || flase  true
		 *		flase|| true   true
		 *		flase|| flase flase
		 *
		 *		둘 다 거짓인 경우에만 거짓이다.
		 *		앞 항이 true가 나온 경우 뒤 항을 체크하지 않음
		 */
		System.out.println( 3>4 || 4>1); //true
		System.out.println( 3<=4 || 4>1); //true
		System.out.println( 3<=4 || 4<1); //true
		System.out.println( 3>4 || 4<1); //false
		 /*
		 *
		 * 	3) !  부정(NOT) 연산자
		 * 		!참 => 거짓
		 * 		!거짓 => 참
		 */
		System.out.println(true);
		System.out.println( !true ); // false
		
		System.out.println( false );
		System.out.println( !false); // true
		
		System.out.println( 3>=4);
		
//		The operator ! is undefined for the argument type(s) int
		//(주의)우선 순위 >=					!
		System.out.println( !(3 >= 4) ); // true
		
		//다르다 연산자 
		// 대입연산자는 항상 우선순위가 뒤에있다.
//		System.out.println(3+ !2);
		
		/* 
		 * 
		 * 2. 비트 논리 연산자
		 * 	1) & 비트 논리 AND 연산자
		 * 	2) | 비트 논리 OR 연산자
		 * 	3) ^ XOR 연산자
		 * 	4) ~ 틸드 연산자(비트부정연산자)
		 */
		

		
		
		
		
	}

}
