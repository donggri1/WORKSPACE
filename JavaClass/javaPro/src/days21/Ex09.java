package days21;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.Period;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오후 12:32:58
 * @subject
 * @content
 */
public class Ex09 {
	public static void main(String[] args) {
		// 날짜 - 날짜 = Period
		// 시간 - 시간 = Duration
		// 문제) 수료일 - 오늘날짜 = 날짜간격
		/*
		LocalDate e = LocalDate.of(2024, 6, 14);
		LocalDate t = LocalDate.now();
		
		Period p = Period.between(t, e);
		System.out.println(p.getYears());
		System.out.println(p.getMonths());
		System.out.println(p.getDays());
		*/
		
		// 시간차 : Duration
		LocalTime e = LocalTime.of(18, 0, 0);
		System.out.println(e);
		LocalTime t = LocalTime.now();
		Duration d =  Duration.between( t,e );
		
		System.out.println(d.getSeconds());
		System.out.println(d.getSeconds()/60);
		System.out.println(d.getSeconds()/60/60);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class
