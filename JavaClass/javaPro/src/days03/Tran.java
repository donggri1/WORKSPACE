package days03;
//7. 두 정수 x,y 를  Scanner로 입력받아서 
//두 정수 중에 큰 값을 max  라는 변수에 저장해서 출력하세요.
//	( 삼항 연산자 ?: 사용 )

import java.util.Scanner;

public class Tran {
	public static void main(String[] args) {

		int x,y;
		Scanner sc= new Scanner(System.in);
		
		System.out.print(">x_y 입력 ?");
		
		
		x = sc.nextInt();
		y= sc.nextInt();
		
		int max = x > y ? x : y ;
		
		System.out.printf("> x=%d,y=%d,max=%d\n", x ,y ,max);
		
	}
	
	
}
