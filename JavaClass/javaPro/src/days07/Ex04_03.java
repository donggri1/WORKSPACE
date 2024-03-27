package days07;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오후 12:10:38
 * @subject
 * @content
 */
public class Ex04_03 {

	public static void main(String[] args) {
		String email;
		Scanner scanner = new Scanner(System.in);
		System.out.print("이메일 입력?");
		email = scanner.next();
		
		// 1개이상의 문자 @naver.com
		// a				
		
		String regex = "^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$";
				
		if( email.matches(regex)) {
			System.out.println("이메일 사용 가능");
		}else {
			System.out.println("이메일 사용 불가능");
		}
		
		// 회원가입
		// 비밀번호 - 8~ 15 자리
		//				@!$% 특수문자 반드시 1개 이상
		//				0-9 숫자 반드시 1개이상
		//				알파벳 대소문자 반드시 1개 이상
		//				카톡으로 보내기
		

	}

}
