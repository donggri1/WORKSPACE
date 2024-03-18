package days06;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 2:43:26
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {

//		4. 알파벳(대,소문자) 코드 및 문자를 출력하는  코딩을 하세요.
//		   ( 조건 : 한 라인에 10개씩 출력 )
		
		for (int i = 'A'; i <= 'Z'; i++) {
			System.out.printf("%c(%03d)",(char)i,i);
			if ( i % 10 ==4 ) {System.out.println();
			}
		}
		for (int i = 'a'; i <= 'z'; i++) {
			System.out.printf("%c(%03d)",(char)i,i);
			if ( i % 10 ==0 ) {System.out.println();
			}
		
		}		
	}//main

}//class
