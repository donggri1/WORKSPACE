package days08;

import java.util.Arrays;

/**
 * @author LEE
 * @date 2024. 1. 10. - 오후 4:17:37
 * @subject
 * @content
 */
public class Ex06_02 {

	public static void main(String[] args) {
		String rrn = "830412-1700001";
		//
		//String -> char[]
		//주민등록번호를 출력
		// 830412-1******
		char [] rrnArr =new char [rrn.length()];
		System.out.println(Arrays.toString(rrnArr));
		Arrays.fill(rrnArr, "*");
		for (int i = 0; i <8; i++) {
			rrnArr[i]=rrn.charAt(i);}
		
	}//main

}//class
