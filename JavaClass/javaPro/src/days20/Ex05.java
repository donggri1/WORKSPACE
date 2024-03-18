package days20;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오후 12:19:28
 * @subject	days19.Ex11_03.java Date 클래스 사용해서 달력
 * @content
 */
public class Ex05 {

	   public static void main(String[] args) {
		      int year = 2024;
		      int month =1;
		      
		      int lastDay   = getLastDay(year,  month);

		      int dayOfWeek = getDayOfWeek(year, month, 1);
		      Calendar start = new GregorianCalendar(year, month-1, 1);
		      start.add(Calendar.DATE, -dayOfWeek);
		      
		      
		      //System.out.println(start.getActualMaximum(Calendar.DATE));
		      
//		      Date start = new Date(year-1900, month-1, 1);
//		      start.setDate(start.getDate() - dayOfWeek);
		      
		      // System.out.println( start.toLocaleString());
		      
		      for (int i = 0; i < 42; i++) {
		         // System.out.println( start.toLocaleString());
		         if (start.get(Calendar.MONTH) == month-1) {
		            System.out.printf("[%02d]\t", start.get(Calendar.DATE));
		         } else {
		            System.out.printf("%02d\t", start.get(Calendar.DATE));
		         }
		         start.set(Calendar.DATE, 1);
		         //start.setDate(start.getDate() +1);
		         if( i %  7 == 6 ) System.out.println();
		      }   

		   }//main

	private static int getLastDay(int year, int month) {
//		Date d = new Date(year -1900, month , 1 );
		//int date = d.getDate() - 1;
		//d.setDate(date); 
		Calendar c = new GregorianCalendar(year, month,1);
		int cal = c.get(Calendar.DATE-1);
		c.set(Calendar.DATE, cal);
		
		
		return c.get(Calendar.DATE-1);
	}

	private static int getDayOfWeek(int year, int month, int date) {
		
		Calendar c = new GregorianCalendar(year, month-1, date);
		return c.get(Calendar.DAY_OF_WEEK)-1; // 1(일)~7(토)
		
		
	}

}//class
