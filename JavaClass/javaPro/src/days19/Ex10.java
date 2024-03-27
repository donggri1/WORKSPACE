package days19;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 3:46:05
 * @subject
 * @content
 */
public class Ex10 {

	public static void main(String[] args) {
		// 정규표현식(Regular Expression == regex ) 정규식
		// - 문자열 속에 원하는 조건(패턴)과 일치하는 문자열을
		//	찾아내기 위해서 사용된다.
		// - 미리 정의된 기호
		// - java.util.regex 패키지
		// 		ㄴ Pattern 클래스
		//		ㄴ Matcher 클래스
			
		String [] data = {"bat","baby","bonus","cA","ca","co", "c.", "c0", "car"
                , "combat", "count", "date", "disc", "fx"
                };
		
		// 1) c로 시작하는 모든 문자(data)를 출력.
		/*
		for (int i = 0; i < data.length; i++) {
			if(data[i].startsWith("c")) {
				System.out.println(data[i]);
			}
			
		}
		*/
		/*	
		String regex = "c.*";
		for (int i = 0; i < data.length; i++) {
			if (data[i].matches(regex))System.out.println(data[i]); 
		}
		*/
		
		
		String regex = "c.*";
		regex = "c[a-zA-Z]*";
		regex = "c[a-zA-Z0-9]*";
		regex = "c\\w*";	//[a-zA-Z0-9] == \\w
		regex = "c.";
		regex = "c\\.";
		regex = "c[0-9]";
		regex = "c\\d";
		regex = "c.*t";
		regex = "c[^0-9]";
		regex = "c\\D";	//[^0-9] == \\D
		regex = "(b|c).{2}";
		regex = "[bc].{2}";//(b|c) == [bc]
		regex = "[bcd].{2,3}";
		regex = "[b-d].{2,3}"; // [bcd] == [b-d]
		regex = "[A-za-z]";
		// bcd문자는 제외한 알파벳 대소문자
		regex = "[A-za-z[^b-d]].*";	// * 0 이상
		regex = "[A-za-z[^b-d]].+";	// + 1 이상
		regex = "[A-za-z[^b-d]].?";	// ? 0,1개
		
		
		Pattern p = Pattern.compile(regex);
		for (int i = 0; i < data.length; i++) {
			Matcher m = p.matcher(data[i]);
			if (m.matches()) {
				System.out.println(data[i]);
			}
			}
		
		}//main
}//class

















