package days21;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오후 12:41:17
 * @subject
 * @content
 */
public class Ex10 {
	public static void main(String[] args) {
		//	DateTimeForamtter 형식화 클래스
		// 날짜문자열 -> 파싱 -> 핵심클래스 변환
		//			  <- 포맷 <- 
		//[2] 날짜문자열 -> 파싱 -> 핵심클래스 변환
		String source = "2023년 08월 10일 (목)";
		String pattern= "yyyy년 MM월 dd일 (E)";
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
		LocalDate d = LocalDate.parse(source,formatter);
		
		System.out.println( d );
		
		
		/*[1]
		LocalDateTime dt = LocalDateTime.now();
		
		System.out.println(dt);
		
		//
		String pattern = "yyyy/MM/dd E hh:mm:ss.sss";
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern(pattern);
		
		String output = dtf.format(dt);
		
		System.out.println( output );
		*/
		
		
		
	}//main
}//class
