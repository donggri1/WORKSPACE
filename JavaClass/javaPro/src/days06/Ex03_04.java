package days06;

import java.io.IOException;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 2:05:40
 * @subject
 * @content
 */
public class Ex03_04 {

	public static void main(String[] args) throws IOException {


		
		//int read() : 표준입력장치의 입력스트림으로부터
					//다음 byte를 읽어서 0~255까지의 int 정수를 반환하는
					//함수(메서드)
					//스트림의 끝을 만나면 -1 값을 반환
		
		//Unhandled exception type IOException
		char one,con = 'y';
		int code;
		
		do {
			System.out.print("> 한 문자 입력? ");
			code = System.in.read();
			one = (char)code;
			System.out.printf("%c\n",one);
			
			System.in.skip(System.in.available());
			
			System.out.print("\n\n계속하시겠습니까?");
			con = (char)System.in.read();
			
			System.in.skip(System.in.available());
			
		} while (Character.toUpperCase(con) == 'Y');
		
		System.out.println("end");
		
		
	}//main

}//class