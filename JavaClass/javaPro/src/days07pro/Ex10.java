package days07pro;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오후 4:42:20
 * @subject
 * @content
 */
public class Ex10 {

	public static void main(String[] args) {

		int a = 10;
		int b = 20;
		int c ;

		// 두 정수 a,b의 합을 구해서 출력.
		// 두 정수의 합을 구해서 반환하는 메서드(함수) 선언 + 호출

		// c = a + b;
		c =  sum(a,b);   // 함수 호출 

		System.out.printf("%d+%d=%d\n",a,b,c);


		// 5:03 수업 시작~
		System.out.printf( "%d\n", sum(a,b,c)     );
		
		int d = 100;
		System.out.printf( "%d\n", sum(a,b,c,d)     );

	} // main

	// 함수 선언 부분
	private static int sum(int a, int b) {		
		return a + b;
	}
	// 함수 선언 부분
	private static int sum(int a, int b, int c) {		
		return a + b + c;
	}
	// 함수 선언 부분
	private static int sum(int a, int b, int c, int d) {		
		return a + b + c + d;
	}


	/*
    // 함수(메서드) 선언
	public static int sum(int a, int b){
		// int c = a + b;
		//return c;
		return a + b;
	}
	 */
} // class











