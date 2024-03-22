package days02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/*import java.io.BufferedReader; --
import java.io.InputStreamReader;--
*/
/**
 * @author LEE
 * @date 2024. 1. 2. - 오후 2:03:17
 * @subject
 * @content 키보드로 부터 나이를 입력받아서 입력받은 나이를 출력
 */
public class Ex06_2 {

	public static void main(String[] args) throws IOException {
		//1나이를 저장할 변수 선언 -128~127
		byte age;
		//2. br 객체 선언
		BufferedReader br =new BufferedReader(new InputStreamReader(System.in));
		System.out.print(">나이 입력 ?");
//		Type mismatch: cannot convert from String to byte
		//String =>byte
		/*String strAge = br.readLine)_;
		 * age= Byte.parseByte(strAge);
		 */
		age = Byte.parseByte(readLine());
		System.out.printf(">나이: %d \n",age);
		//문자열 "23"  ->숫자(정수) byte 형 변환
		
		
		
	/*	문제풀이못함
		
		BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println(">나이 입력?");
		byte age=31;
		age = br.readLine();
		System.out.println();
		*/

	
	}

}
