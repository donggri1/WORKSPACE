package days19;

import java.util.Date;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 4:31:03
 * @subject
 * @content
 */
public class Ex11 {
	public static void main(String[] args) {
		/*
		 * 1. 날짜,시간,형식화(formatting)클래스
		 * 2. 컬렉션 프레임워크 ( 컬렉션 클래스 )
		 * 3. 자바 IO(입출력)
		 * 4. 열거형, 제네릭
		 * 
		 * 5. 스레드 + 네트워크 X
		 * 6. 람다식 + 스트림 X
		 * 
		 */
		
		
		// jda 1.0		java.util.Date
		// jdk 1.1 		java.util.calendar
		//							ㄴ GregorianCalendar
		// jdk 1.8		java.tiem 패키지 + 하위 패키지
//								다양한 날짜/시간 클래스 추가.
		Date d = new Date();// 8개의 생성자
		//Thu Jan 25 16:37:34 KST 2024
		System.out.println(d.toString());
		System.out.println(d);
		//25 Jan 2024 07:40:37 GMT
		System.out.println(d.toGMTString());
		//2024. 1. 25. 오후 4:41:05
		System.out.println(d.toLocaleString());
		
		// 년
		System.out.println(d.getYear()+ 1900);
		// 월
		System.out.println(d.getMonth()+1);
		// 일
		System.out.println(d.getDate());
		// 시간
		System.out.println(d.getHours());
		// 분
		System.out.println(d.getMinutes());
		// 초
		System.out.println(d.getSeconds());
		// 밀리초	1000ms == 1s	
		// 요일
		System.out.println(d.getDay()); // 0(일)~6(토)
		System.out.println("일월화수목금토".charAt( d.getDay())); // 0(일)~6(토)
		
		// d.getTime()
		//1970.1.1-00.00.00.000~ 카운팅한 숫자
		System.out.println(d.getTime()); //1706168805808ms 
		
		long time = d.getTime();
		
		Date d2 = new Date(time);
		System.out.println(d2.toLocaleString());
		
		
		
		
		
	}//main
}//class











