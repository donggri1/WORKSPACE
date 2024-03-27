package days07;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오후 4:42:42
 * @subject
 * @content
 */
public class Ex10 {

	public static void main(String[] args) {

		int a = 10;
		int b = 20;
		int c;
		c= sum(a,b);
		
		// 두 정수 a,b의 합을 구해서 출력.
		// 두 정수의 합을 구해서 반환하는 메서드(함수) 선언 + 호출
		
		//c = a + b;
		System.out.printf("%d+%d=%d\n",a,b,c);
		
		
		
		System.out.printf("%d\n",sum(a,b,c));
		
		
		
		
	}//main

	public static int sum (int a, int b ) {
		return a+b;
	}
	public static int sum (int a, int b ,int c) {
		return a+b+c;
	}
	public static int sum (int a, int b ,int c,int d) {
		return a+b+c+d;
	}
	//함수(메서드) 선언
	
	
}//class
