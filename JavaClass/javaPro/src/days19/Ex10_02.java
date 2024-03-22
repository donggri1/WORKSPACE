package days19;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 4:21:42
 * @subject
 * @content
 */
public class Ex10_02 {
	
	public static void main(String[] args) {
		
		String source = "Hp:010-1234-5678, HOME:02-999-0099";
		String pattern = "(0\\d{1,2})-(\\d{3,4})-(\\d{4})";
		
		Pattern p = Pattern.compile(pattern);
		Matcher m = p.matcher(source);
		
		
		//boolean m.matches(); // 찾아내겠다는 함수
		//boolean m.find()
		int no = 0;
		while(m.find()) {
			System.out.printf("%d: %s\t %s-%s-%s \n",++no, m.group(),m.group(1),m.group(2),m.group(3));
		}
	}//main
}//class
