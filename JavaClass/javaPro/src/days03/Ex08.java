package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 4:50:13
 * @subject 연산자 활용
 * @content 대문자 -> 소문자 변환
 * 			소문자 -> 대문자 변환
 */
public class Ex08 {

	public static void main(String[] args) {
		
		System.out.printf("%c(%d)\n",'A',(int)'A');
		System.out.printf("%c(%d)\n",'A',(int)'B');
		System.out.printf("%c(%d)\n",'A',(int)'Z');
		System.out.printf("%c(%d)\n",'A',(int)'a');
		System.out.printf("%c(%d)\n",'A',(int)'b');
		System.out.printf("%c(%d)\n",'A',(int)'z');

		// 'x' -32 = "X"
		char lowerCase = 'x', upperCase;
		upperCase = (char) (lowerCase - 32);
		
		lowerCase = (char) (upperCase + 32);
		
		System.out.printf("%c(%d)\n",upperCase,(int)upperCase);
	
		//'0' - 48
		//'1' - 49
		//'9' - 57
		
		System.out.println('4' - '2'); // 52-50=2
	}

}
