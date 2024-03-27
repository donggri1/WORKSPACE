package days09;

import com.util.Mycalender;

public class Ex04 {

	public static void main(String[] args) {

//4. 2010~2030 까지의 윤년체크하는 함수를 만들어서 
//  윤년/평년 출력하는 코딩하세요.  
//		Mycalender.lisLeapYear(year)
		String result = "평년";
		for (int i = 2010; i <=2030; i++) {
			result = "평년";
			if (Mycalender.lisLeapYear(i)) result = "윤년";
			System.out.printf("%d년 %s\n",i,result);
			
		}

	}

}
