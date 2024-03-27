package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 2:39:06
 * @subject 비트 논리 연산자
 * @content & ^ | ~
 */
public class Ex04_05 {

	public static void main(String[] args) {
		//
//		/* / /0000 0011
//		System.out.println( 3 );
//		System.out.println(Integer.toBinaryString(3));
//		String binStr = Integer.toBinaryString(3);
//		System.out.printf("%08d\n",Integer.parseInt( binStr )); //"11"-> 11형변환
//		int no = 15;
//		System.out.printf("%08d\n", no);
		
		
		//				00000011
		System.out.println( 3 );
		//				00000001
		System.out.println( 1 );
		
		// & 비트 논리 And 연산자
		// 상응 되는 비트 값을 비교.
		// 00000011
		// 00000001
		// &
		// 1 & 1 1
		// 1 & 0 0
		// 0 & 1 0
		// 0 & 0 0
		// |
		// 1 & 1 1
		// 1 & 0 1
		// 0 & 1 1
		// 0 & 0 0
		// ^ XOR 연산자
//			 eXclusiv OR 연산자
		//	 베타적인(서로다른)
		// 1 ^ 1 0
		// 1 ^ 0 1
		// 0 ^ 1 1
		// 0 ^ 0 0
		System.out.println( 3 & 1 );
		System.out.println( 3 | 1 );
		System.out.println( 3 ^ 1 );
		
		// ! !true=> false
		//	 !false => true
		
		
		// ~ 틸드 연산자
		// 1=>0
		// 0=>1
		System.out.println(~3); // 1111 1100 -4
		//1111 1100 음수표현하는법 2의 보수법
		//		 -1
		//1111 1011
		//0000 0100 보수
		//		  4 음수취하면 -4
		
		
	
	
	} //main

} // class
