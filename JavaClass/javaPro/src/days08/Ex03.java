package days08;

import java.util.Scanner;

import com.util.Mycalender;

public class Ex03 {

	public static void main(String[] args) {
		//년도를 입력받아서 [윤년]/[평년] 출력 코딩
		int year;
		year = getYear();
		// 태양년		: 1년 365.24219878
		
		//	공전		: 1년 365.2425
		//[2]
		String result = Mycalender.lisLeapYear(year);
		if(Mycalender.lisLeapYear(year).equals("윤년")) {
			
		}else {
			System.out.println("평년(common year)");
		}
		/*[1]
		if(year % 4 == 0 && year % 100 !=0|| year%400==0) {
			System.out.println("윤년(leap year");
		}else {
			System.out.println("평년(common year)");
		}
		*/

	}

	private static int getYear() {
		int year;
		System.out.print("> 년도 입력?");
		Scanner scanner = new Scanner(System.in);
		//년도 유효성 검사~
		// String regex ="\\d*[1-9]";
		year = scanner.nextInt();
		
		return 0;
	}

}
