package days07;

import java.util.Scanner;

public class Tr {
	
public static void main(String[] args) {

	int com , user;
	
	try(Scanner scanner = new Scanner(System.in)) {
		
		com = (int) (Math.random() * 3)+1;
		
		
		do {
			
			
			
		} while (condition);
		
		
		
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
  }//main
 }//class

