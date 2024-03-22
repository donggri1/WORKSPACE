package days08;

import java.util.Scanner;

import com.util.MyCalendar;

/**
 * @author kenik
 * @date 2024. 1. 10. - 오전 10:47:07
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		// 11:03 수업 시작
		// 년도를 입력받아서 [윤년]/[평년] 출력 코딩.
	    int year;
	    year = getYear();
		
	    // 태양년      : 1년  365.24219878
	    
	    // 공전        : 1년  365.2422
	    // 그레고리력  : 1년  365.2425
	    // 율리우스력  : 1년  365.25
	    
	    // [3]
	     
	    if ( MyCalendar.isLeapYear(year)  ) {
			System.out.println("윤년(leap year)");
		} else {
			System.out.println("평년(common year)");
		}
	    
	    
	    // [2]
	    /*
	    String result = MyCalendar.isLeapYear(year);	    
	    //if ( result.equals("윤년") ) {
	    if ( MyCalendar.isLeapYear(year).equals("윤년") ) {
			System.out.println("윤년(leap year)");
		} else {
			System.out.println("평년(common year)");
		}
		*/
	    
	    /* [1]
	    if ( year % 4 == 0 && year % 100 != 0 || year%400 == 0) {
			System.out.println("윤년(leap year)");
		} else {
			System.out.println("평년(common year)");
		}
		*/

	} // main

	
	public static int getYear() {
		int year;
		System.out.print("> 년도 입력 ? ");
		Scanner scanner = new Scanner(System.in);
		// 년도 유효성 검사~
		// String regex = "\\d*[1-9]";
		year = scanner.nextInt();
		return year;
	}

} // class










