package days02;

public class Ex08 {

	public static void main(String[] args) {
		//[진법 변환]
		// 16 진수	: 0 1 2 3 4 5 6 7 8 9 a(10) b(11) c(12) d(13) e(14) f(15) g(16)
		// 10 진수	: 0 1 2 3 4 5 6 7 8 9 
		// 8 진수	: 0 1 2 3 4 5 6 7 
		// 2 진수	: 0 1
		
		byte b=10; // 1byte [0][0][0][0][1][0][1][0]
		// 
		System.out.println(Integer.toBinaryString(b)); // 2진수로 표기 "1010"
		System.out.println(Integer.toOctalString(b)); // 8진수로 표기 "12"
		System.out.println(Integer.toHexString(b)); // 16진수로 표기 "a"
		

	}//main

}//class
