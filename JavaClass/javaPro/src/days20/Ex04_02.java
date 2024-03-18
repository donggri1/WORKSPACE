package days20;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오전 11:43:19
 * @subject
 * @content
 */
public class Ex04_02 {
	public static void main(String[] args) {
		// Calendar - getTime(),setTime() 메서드
		
		// 1. Calendar -> Date 변환  o
		
		Calendar c = Calendar.getInstance();
		 Date d= c.getTime();
		// 2. Date -> Calendar 변환
		Date n = new Date ();
		c.setTime(n);
		
		
			
				
			}//main
}//class




