package days20;

import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오전 10:49:51
 * @subject
 * @content
 */
public class Ex03 {
	public static void main(String[] args) {
		// Calendar 클래스
		// jdk1.1 Calendar 추상클래스 - 날짜,시간
		//Calendar c= new Calendar(0);X
		Calendar c = Calendar.getInstance(); // 객체생성법
		//	ㄴ GregorianCalendar();의 부모
		//System.out.println(c.toString());
		
		// 2024년도의 몇 일째인지.?
		System.out.println(c.get(Calendar.DAY_OF_YEAR)); //26
		//해당주에서 몇 일째인지.?
		System.out.println(c.get(Calendar.DAY_OF_WEEK)); //6
		// 년 중의 몇번째 주인지.
		System.out.println(c.get(Calendar.WEEK_OF_YEAR));

		
		
		// 년 
		System.out.println(c.get(1));
		System.out.println(c.get(Calendar.YEAR));
		
		// 월
		System.out.println(c.get(2)+1);
		System.out.println(c.get(Calendar.MONTH));
		// 일
		System.out.println(c.get(5));
		System.out.println(c.get(Calendar.DATE));
		System.out.println(c.get(Calendar.DAY_OF_MONTH));
		// 시간
		System.out.println(c.get(10));
		System.out.println(c.get(Calendar.HOUR));
		System.out.println(c.get(Calendar.HOUR_OF_DAY));
		// 분
		System.out.println(c.get(12));
		System.out.println(c.get(Calendar.MINUTE));
		// 초
		System.out.println(c.get(13));
		System.out.println(c.get(Calendar.SECOND));
		// 밀리초
		System.out.println(c.get(14));
		System.out.println(c.get(Calendar.MILLISECOND));
		// 요일
		System.out.println(c.get(7));
		System.out.println(c.get(Calendar.DAY_OF_WEEK));

		// 자정부터 정오 직전까지의 시간을 나타내는 AM_PM 필드의 값
		System.out.println(c.get(Calendar.AM ));	//1
		// 시간이 정오 이전인지 이후인지를 나타내는 필드 값
		System.out.println(c.get(Calendar.AM_PM));	//0
	}//main
	
}//class