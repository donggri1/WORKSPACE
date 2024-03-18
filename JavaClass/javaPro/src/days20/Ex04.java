package days20;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오전 11:31:52
 * @subject
 * @content
 */
public class Ex04 {
	public static void main(String[] args) {
	// 1. 수요일이 무슨요일?
	//Date o = new Date(0, 0, 0, 0, 0);
	Calendar c = Calendar.getInstance();
	// c.get(field)
	//새로운 날자를 설정 : set(field,value)
	c.set(Calendar.YEAR,2024);
	c.set(Calendar.HOUR_OF_DAY,18);
	c.set(Calendar.MINUTE,0);
	c.set(Calendar.SECOND,0);
	c.set(Calendar.MILLISECOND,0);
	
	//[시험] 형식화 클래스 Date , Calendar 
	// "2015.5.1 오전 9:11:12"
	/*
	String pattern= "yyyy.MM.dd a hh:mm:ss.SSS";
	
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);	
	
	Date d= c.getTime();
	String strDF = sdf.format(d);
	System.out.println(strDF);
	*/	
	
	String pattern= "yyyy.MM.dd a hh:mm:ss.SSS";
	System.out.println( getFormatDate(c, pattern));
	
	}//main
	
	public static String getFormatDate(Object o, String pattern) {
		
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);	
		
		if ( o instanceof Date) {
			Date d= (Date)o;
			return sdf.format(d);
			
		} else if(o instanceof Calendar) {
			Calendar c = (Calendar)o;
			Date d= c.getTime();
			return sdf.format(d);
		}
		return null;	
	}
	
	
	/*
	public static String getFormatDate(Date d, String pattern) {
		
		
	}
	public static String getFormatDate(Calendar c, String pattern) {
		
		
	}
	*/
}//class