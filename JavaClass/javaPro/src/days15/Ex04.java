package days15;

import java.sql.Date;

import days14.Point;

/**
 * @author LEE
 * @date 2024. 1. 19. - 오후 12:03:08
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {
		// 어제 했던 코딩을 생성자를 사용해서 수정.
		// 클래스 배열 초기화
		Point [] poitns = {
				new Point(1,1),
				new Point(10,10),
				new Point(20,20)		
	};

		int year = 2024;
		int month = 1;
		int day = 19;
		
		// 날짜 다루는 클래스
		// Date, Calendar , LocalDate
		Date d = new Date(year - 1900, month -1 , day);
		System.out.println(d.toString());
		System.out.println(d.toLocaleString());
		System.out.println(d.toGMTString());
		
		System.out.println(d.getDay());// 5(금) 0(일)~6(토)
		
		
}
}