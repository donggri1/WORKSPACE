package days21;

import java.time.LocalDate;
import java.time.temporal.ChronoField;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오전 11:27:38
 * @subject
 * @content
 */
public class Ex05 {
	public static void main(String[] args) {
		// 날짜, 시간의 비교 isAfter(), isBefore(), isEqual()
		// 홍길동의 생일 1999.1.20 
		// 올해 홍길동의 생일 지났는지? 지나지 않았는지? 오늘인지. 체크
		
		LocalDate today = LocalDate.now();
		LocalDate birth = LocalDate.of(1999, 1, 20);
		System.out.println(today);
		System.out.println(birth);
		
		today = today.withYear(today.getYear());
		System.out.println(today);
		
		System.out.println(today.isAfter(birth) );  /// >
		System.out.println(today.isBefore(birth) );  /// <
		System.out.println(today.isEqual(birth) );  /// == 
		
		// 0 양수 음수
		System.out.println(today.compareTo(birth) );  /// 9(양수) 
		
		//if(today.compareTo(birth)> == <0)
		
 		
		
	}//main
}//class















