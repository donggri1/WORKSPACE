package days08;

import java.util.Arrays;

/**
 * @author kenik
 * @date 2024. 1. 10. - 오후 4:17:34
 * @subject
 * @content
 */
public class Ex06_04 {

	public static void main(String[] args) {
		String rrn = "830412-1700001";
		
		// String  String.substring(beginIndex, endIndex)
		
		String printRRN = rrn.substring(0, 8) + "******" ;
		
		// String String.concat(); 문자열 연결 
		System.out.println( rrn.substring(0, 8).concat("******") );
		
		// 주민등록번호를 출력
		// 830412-1******
	} // main

} // class








