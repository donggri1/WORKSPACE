package days10;

import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

import com.util.MyCalendar;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오전 11:09:30
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {
		// 달력
		int year, month; // 달력의 년도와 월
		try (Scanner scanner = new Scanner(System.in)) {
			System.out.print("> 년도 월 입력 ?");
			year = scanner.nextInt();
			month = scanner.nextInt();
			
			// 달력그리기
			printCalendar(year, month); 
		} catch (Exception e) {		
			e.printStackTrace(); // 예외 정보 확인.
		}

	} // main

	//  2020 5
	//  총날짜수 % 7 => 0(일) 1(월) 2(화) ~ 6(토)
	private static void printCalendar(int year, int month) {
		// 1. year, month, 1  무슨 요일 ? 
		/*
	    Date d = new Date(year - 1900, month-1, 1);
	    System.out.println( d.toLocaleString());
	    System.out.println( "일월화수목금토".charAt(d.getDay() ));
	    */ 
		int dayOfWeek = getDay(year, month, 1);
		
		// 2. year, month 마지막 날짜 ?
		int lastDay = getLastDay(year, month);
		
		// 달력 출력...
		System.out.printf("\t\t\t[%d년 %d월]\n", year, month);
		System.out.println("-".repeat(60));
		String week ="일월화수목금토";
		for (int i = 0; i < week.length(); i++) {
			System.out.printf("\t%c",week.charAt(i) ); 
		} // for
		System.out.println(); // 개행
		System.out.println("-".repeat(60));
		
		// 1의 위치를 잡기 위해서 앞에 \t 위치 for
		for (int i = 0; i < dayOfWeek; i++) {
			System.out.print("\t");
		}		
		// System.out.printf("\t%d", 1 );
		for (int i = 1; i <= lastDay; i++) {
			System.out.printf("\t%d", i );
			if( (i+dayOfWeek)%7==0) System.out.println();
		}
		
		System.out.println();
		System.out.println("-".repeat(60));
		
	} // print

	// [3]
	private static int getLastDay(int year, int month) {
		int lastDay = 0;
		Calendar c = Calendar.getInstance();
		c.set(year, month-1, 1);
		lastDay = c.getActualMaximum(Calendar.DAY_OF_MONTH);		
		return lastDay;
	}
	
	//[2]
	/*
	private static int getLastDay(int year, int month) {
		int lastDay = 0;
		//                0  1  
		//              1월 2월
		int [] months = {31,28,31,30,31,30,31,31,30,31,30,31 };
		lastDay = months[month-1];
		if( MyCalendar.isLeapYear(year) && month == 2 ) lastDay = 29;
		return lastDay;
	}
	*/
	/* [1]
	private static int getLastDay(int year, int month) {
		int lastDay = 0;
		switch (month) {
		case 1:case 3:case 5:case 7: case 8: case 10: case 12:
			lastDay = 31;
			break;
		case 2: 
			//                    Ctrl + 마우스클릭     
			lastDay = MyCalendar.isLeapYear(year) ? 29: 28;
			break;
		case 4: case 6: case 9: case 11:
			lastDay = 30;
			break;
		}
		return lastDay;
	}
	*/

	private static int getDay(int year, int month, int day) {
		
		// 1.1.1~ year.month.1 총날짜수 % 7  
		// 0~6
		int totalDays = getTotalDays(year, month, day);
		int dayOfWeek = totalDays % 7;
		return dayOfWeek;
	}

	private static int getTotalDays(int year, int month, int day) {
		// year 2020 , month  5, day 1
		// 365 * 2019(year-1) + 20.1(31)+2(29)+3(31)+4(30) +1
		int totalDays = 0;
		// 1. year-1 == 2019  이전년도까지의 총날짜수
		/*
		for (int i = 1; i < year; i++) {
			totalDays +=    MyCalendar.isLeapYear(i) ? 366: 365;
		}
		*/
		totalDays = (year-1)*365+(year-1)/4-(year-1)/100+(year-1)/400;
		
		// 1 2 3 4
		for (int i = 1; i < month; i++) {
			totalDays += getLastDay(year, i); 
		}
		//
		totalDays++; 
		return totalDays;
	}

} // class









