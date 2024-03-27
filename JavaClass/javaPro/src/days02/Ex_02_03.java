package days02;

/**
 * @author LEE
 * @date 2024. 1. 2. - 오전 10:28:20
 * @subject Q.두 기억공간의 값을 바꾸기(암기)
 * @content
 */
public class Ex_02_03 {

	public static void main(String[] args) {
		/*
		int x = 10 ; // 1 2 3 .. 0 -1 -2
		int y = 20 ; 
		*/
		
		//콤마(,) 나열을 나타내는 연산자
		
		int x=10 , y =20 ; 
		
		System.out.printf("교환 전 > x=%d, y=%d\n",x,y);

		//[작업]
		//프로그램 상에서 두 기억공간의 값을
		//교환하려면 반드시 동일한 자료형의
		//임시기억공간이 필요하다.
		//temp cannot be resolved to a variable
		{
		int temp = x;
		x=y;
		y=temp;
		}
		
		System.out.printf("교환 후 > x=%d, y=%d\n",x,y);
		
		
		/*
		int a = 100;
		int b = 100;
		int c = 100;
		*/
//		int a =100,b=100,c=100;
		/*int a,b,c;
		//오른쪽부터 왼쪽으로 처리
		a = b = c = 100;
		*/
	}//main

}//class
