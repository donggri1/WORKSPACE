package days07;

import java.util.Scanner;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오후 12:10:26
 * @subject
 * @content
 */
public class Ex04_03 {

	public static void main(String[] args) {
		String email;
		Scanner scanner = new Scanner(System.in);
		System.out.print("이메일 입력 ? ");
		email = scanner.next();
		
		String regex = "^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*"
				+ "@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$";
		
		// 7-z@asdfs.aaa
		// z_x@1.aa
		// A.9sdfsafd@Zsf.kr
		
		if( email.matches(regex) ) {
			System.out.println( "이메일 사용 가능" );
		}else {
			System.out.println( "이메일 사용 불가능" );
		}
		
		
		// 회원가입 
		// 비밀번호 -  8~15 자리
		//             %$#@ 특수문자 반드시 1개 이상
		//             0-9  숫자  반드시  1개 이상
		//             알파벳 대소문자  반드시 1개 이상
		// 정규 표현식을 검색해서 찾아서 카톡으로 보내주세요. 

		// 구본혁 ^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,15}
		// 원대한 ^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,15}$
		// 이동찬 (?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,15})
		// 강명건 ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,15}$

	} // main

} // class







