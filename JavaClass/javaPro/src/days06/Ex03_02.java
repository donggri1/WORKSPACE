package days06;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 12:45:51
 * @subject
 * @content
 */
public class Ex03_02 {

	public static void main(String[] args) {

		char one ;
		//Syntax error on token "continue", invalid VariableDeclaratorId
		//예약어를 식별자로 사용 할 수 없음
		char con = 'y';
		
		
		Scanner scanner = new Scanner(System.in);
		
		
		do {
			System.out.print(">한 문자 입력?");
			one = scanner.next().charAt(0);
			System.out.printf("one='%c'\n",one);
		
			System.out.print("\n\n계속하시겠습니까?");
			con = scanner.next().charAt(0);
		} while (con=='y'|| con == 'Y');
			
		System.out.println("종료");
	}

}
