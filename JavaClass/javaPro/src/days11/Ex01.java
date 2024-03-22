package days11;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Ex01 {

	public static void main(String[] args) {
		
		int year= 2020,month=5,day=1;
		int lastDay = getLastDay(year,month);
		int dayOfWeek = getDayOfWeek(year,month,1);
		getTotalDays(year,month,day);
	}

	public static int getTotalDays(int year, int month, int day) {
		LocalDate startDate = LocalDate.parse("0001-01-01");
		LocalDate endDate = LocalDate.of(year, month, day);
		
		return (int)(startDate.until(endDate,ChronoUnit.DAYS))+1;
		
	}

	private static int getDayOfWeek(int year, int month, int i) {
		
		LocalDate d = LocalDate.of(year, month, 1);
		DayOfWeek w = d.getDayOfWeek();
		
		return w.getValue();
	}

	private static int getLastDay(int year, int month) {
		LocalDate d= LocalDate.of(year, month, 1);
		System.out.println(d.toString());
		LocalDate ld= d.withDayOfMonth(d.lengthOfMonth());
		System.out.println(ld.toString());
		int lastDay= ld.getDayOfMonth();
		System.out.println( lastDay );
		return lastDay;

	}
	
	

}
