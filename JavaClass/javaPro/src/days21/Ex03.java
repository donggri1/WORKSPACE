package days21;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.Month;
import java.time.temporal.ChronoField;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오전 10:33:39
 * @subject
 * @content
 */
public class Ex03 {
	public static void main(String[] args) {
		LocalDate ld = LocalDate.now();
		System.out.println(ld);
		
		// 년 
		int year = ld.get(ChronoField.YEAR);
		System.out.println( year );
		
		ld.getYear();
		System.out.println( year );
		
		// 월
		int month = ld.get(ChronoField.MONTH_OF_YEAR);
		System.out.println(month);
		
		month = ld.getMonthValue();
		System.out.println(month);
		
		Month emonth = ld.getMonth();
		System.out.println( emonth ); //JANUARY
		// 일
		int day = ld.get(ChronoField.DAY_OF_MONTH);
		System.out.println(day);
		
		day = ld.getDayOfMonth();
		System.out.println( day );
		
		LocalTime lt = LocalTime.now(); //시간먼저찍으려면 로컬타임이 있어야함
		
		// 시간
		//temporal.UnsupportedTemporalTypeException
		int hour = lt.get(ChronoField.HOUR_OF_DAY);
		System.out.println(hour);
		
		hour = lt.get(ChronoField.HOUR_OF_DAY);
		System.out.println(hour);
		// 분
		int minute = lt.get(ChronoField.MINUTE_OF_HOUR);
		System.out.println(minute);
		
		minute = lt.getMinute();
		System.out.println(minute);
		// 초 
		int second = lt.get(ChronoField.SECOND_OF_MINUTE);
		System.out.println(second);
		
		second = lt.getSecond();
		System.out.println(second);
		
		
		
		// 밀리초
		int milli  = lt.get(ChronoField.MILLI_OF_SECOND);
		System.out.println(milli);
		
		int ns =lt.getNano();
		System.out.println(ns);
		System.out.println(ns/ 100000);
		// 요일
		int dof = ld.get(ChronoField.DAY_OF_WEEK);
		
		System.out.println( dof ); // 월(1) ~ 일(7)
//								Date  일(0) ~ 토(6)
//							Calendar  일(1) ~ 토(7)
		
		DayOfWeek edow= ld.getDayOfWeek();
		System.out.println(edow); //MONDAY
		System.out.println(edow.getValue()); // 1
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class
