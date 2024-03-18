package days20;

import java.util.Date;

public class Ex01 {

	public static void main(String[] args) {
		//[풀이]
		//4. 개강일(2023.12.29. 9:00:00)로 부터
		//	오늘까지 지난 일수 계산을 하세요..
		//[2]
		Date o= new Date(2023-1900,12-1,29,9,0,0);
		// 1970.1.1 00:00:00.000
		//1703808000000ms

		System.out.println(o.getTime());

		Date t = new Date();
		//1706231635218ms
		System.out.println(t.getTime());
		
		long diff = t.getTime() - o.getTime();
		// ?? 일 ??시간 ?? 분 ??초
		
		int d= (int) diff/(1000*60*60*24);
		int h= (int)diff/(1000*60*60)-d;
		int m= (int)diff/(1000*60)-h;
		int c= (int)diff/(1000)-m;
		
		System.out.printf("%d 일 %d 시간 %d 분 %d 초",d,h,m,c);
//		System.out.println(diff+"ms");
//		System.out.println(diff/(1000)+"d");
//		System.out.println(diff/(1000*60)+"d");
//		System.out.println(diff/(1000*60*60)+"d");
//		System.out.println(diff/(1000*60*60*24)+"d");
		
		
		
		
		//[1]총 날짜수 메서드 days10.Ex02.getTotalDays
		
		
		
		
		
		
		
		
		
		

	}//main

}//class























