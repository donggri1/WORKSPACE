package days20;

import java.util.Arrays;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오후 4:26:30
 * @subject
 * @content
 */
public class Ex09_02 {
	public static void main(String[] args) {
		String output = "이름:권맑음, 나이:26살, 성별:남자, 키:178.67, 등급:A 입니다.";
		
		// output 문자열 속에서 이름,나이를 파싱(찾아서,추출)해서
		// String name, int age 변수에 저장 후 출력하세요.
		
		output.indexOf(":");
		output.indexOf(",");
		
		String name = output.substring(output.indexOf(":")+1,output.indexOf(","))  ;
		System.out.println(name);
		
		int a = output.indexOf("이:")+2;
		int b = output.indexOf("살");
		
		int age = Integer.parseInt(output.substring(a,b)); 
		
		System.out.printf("> 이름 : %s, 나이: %d 살 \n",name , age);
				
		
	}//main
}//class







