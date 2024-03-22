package days07;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오전 10:08:26
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {

		int com , user;
		String [] rps = {"","가위","바위","보"};
		char con = 'y';
		String strUser;
		String regex = "[1-3]";
		
		try(Scanner scanner = new Scanner(System.in)) {
			do {
				com = (int) (Math.random() * 3)+1;
				
				do {
					System.out.print("> user 가위(1), 바위(2) , 보 (3) 선택?");
					
					strUser = scanner.next();
					
					user = Integer.parseInt(strUser);
					//user = scanner.nextInt();
					//입력값에 대한 유효성 검사 한 후
					
				} while (!strUser.matches(regex));
				
				
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
				System.out.println("다시할거니?");
				
				con = (char) System.in.read();
				System.in.skip(System.in.available());
			} while (Character.toUpperCase(con)=='Y');
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	


	}

}
