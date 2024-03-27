package days05;

import java.util.Scanner;

import javax.management.StringValueExp;

/**
 * @author LEE
 * @date 2024. 1. 5. - 오전 11:33:31
 * @subject 컴퓨터 - 사용자 (USER)
 * @content [ 가위(1), 바위(2) , 보 게임(3)]
 * 			컴퓨터는 게임을 할 때 마다 임의의 ( 1~3 )발생
 * 			사용자는 1~3 입력.
 */
public class Ex03 {

	public static void main(String[] args) {

		int com , user;
		
		try(Scanner scanner = new Scanner(System.in)) {
			
			com = (int) (Math.random() * 3)+1;
			
			System.out.print("> user 가위(1), 바위(2) , 보 (3) 선택?");
			//입력 값에 대한 유효성 검사..
			user = scanner.nextInt();
			
			
			String [] rps = {"","가위","바위","보"};
			System.out.printf("%d(%s)\n",com,rps[com]);
			


			
			System.out.printf("컴퓨터 : %s, 사용자 : %s\n", rps[com],rps[user]);
			switch (user - com) {
			case -2: case 1:  
				System.out.println("사용자 승리");
				break;
			case -1: case 2:
				System.out.println("컴퓨터 승리");
			default:
				System.out.println("무승부");
				break;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

	private static void StringValue(String string) {
		// TODO Auto-generated method stub
		
	}

}




