package days20;

import java.text.MessageFormat;
import java.text.ParseException;
import java.util.Arrays;
import java.util.regex.Pattern;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오후 4:26:30
 * @subject
 * @content
 */
public class Ex09_03 {
	public static void main(String[] args) {
		String output = "이름:권맑음, 나이:26살, 성별:남자, 키:178.67 입니다.";
		
		
		String pattern = "이름:{0}, 나이:{1}살, 성별:{2}, 키:{3}입니다.";
		MessageFormat mf = new MessageFormat(pattern);
		
		try {
			Object [] objs = mf.parse(output);
			for (Object o: objs) {
				System.out.println(o);
				
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}//main
}//class







