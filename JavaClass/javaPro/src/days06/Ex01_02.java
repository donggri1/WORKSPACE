package days06;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오전 10:20:44
 * @subject
 * @content
 */
public class Ex01_02 {

	public static void main(String[] args) {
		//입력받은 한 문자 숫자 ,알대소,한글,특수문자
		//'0'<=one && '9'>=one
		char one = 0;
		System.out.println(Character.isDigit(one));
		if (Character.isDigit(one)) {
			System.out.println("숫자 o");
		} else {
			System.out.println("숫자 x");

		}
		
		//one='a';
		//System.out.println(Character.isAlphabetic(one));
		

	}

}
