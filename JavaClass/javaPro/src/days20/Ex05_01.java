package days20;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Ex05_01 {

	   public static void main(String[] args) {
	      int year = 2024;
	      int month = 1;
	      
	      //int lastDay   = getLastDay(year,  month);
	      int dayOfWeek = getDayOfWeek(year, month, 1);
	      
	      Calendar start = new GregorianCalendar(year, month-1,1);
	      start.add(Calendar.DATE, -dayOfWeek);
	      
	     //System.out.println(Ex04.getFormatDate(start, "yyyy-MM-dd"));
	      
	      // System.out.println( start.toLocaleString());
	      Calendar today = Calendar.getInstance();
	      String t = Ex04.getFormatDate( )
	      
	      for (int i = 0; i < 42; i++) {
	    	  //System.out.println(Ex04.getFormatDate(start, "yyyy-MM-dd"));
	    	  
	         if (start.get(Calendar.MONTH)+1 == month) {
	        	 if( today.equals(start)) {
	        		 System.out.println("*");
	        	 }
	            System.out.printf("[%02d]\t", start.get(Calendar.DATE));
	         } else {
	            System.out.printf("%02d\t", start.get(Calendar.DATE));
	         }
	         start.add(Calendar.DATE, 1);
	         if( i %  7 == 6 ) System.out.println();
	      }   

	   }//mai
	   
		private static int getLastDay(int year, int month) {
//			Date d = new Date(year -1900, month , 1 );
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