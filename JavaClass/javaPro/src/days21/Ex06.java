package days21;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오전 11:41:38
 * @subject
 * @content
 */
public class Ex06 {
	
	public static void main(String[] args) {
		LocalDate d= LocalDate.now();
		LocalTime t= LocalTime.now();
		LocalDateTime dt = LocalDateTime.now();
		
		//dt -> d,t
		LocalDate d2 = dt.toLocalDate();
		LocalTime t2 = dt.toLocalTime();
		
		LocalDateTime dt2 = d.atTime(t);

		LocalDateTime dt3 = t.atDate(d);
		
		
		
		
	}//main
}//class
