package days21;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오전 10:23:20
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {
		// [j.t 핵심클래스]
		LocalDate ld = LocalDate.now();
		System.out.println(ld.toString()); // 2024-01-29
		
		LocalTime lt = LocalTime.now();
		System.out.println(lt); //10:26:57.144125200
		
		LocalDateTime ldt = LocalDateTime.now();
		System.out.println(ldt); //2024-01-29T10:27:31.749516100 
		
		// of() 메서드
		ld = LocalDate.of(2023, 12, 29);
		System.out.println(ld); // 2023-12-29
		
		lt = LocalTime.of(14,20,11);
		System.out.println(lt); //	14:20:11
		
		ldt = LocalDateTime.of(ld, lt);
		System.out.println(ldt); //2023-12-29T14:20:11

		
		
		
		
	}//main

}//class








