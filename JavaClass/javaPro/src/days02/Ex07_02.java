package days02;

import java.util.Calendar;

public class Ex07_02 {

	public static void main(String[] args) {
		int i=10;
		System.out.printf("%1$d\t%1$#o\t%1$#x\t%1$#X\n",i);// \t는 탭키

		
		//날짜 클래스
		Calendar c = Calendar.getInstance();
		System.out.printf("%1$tY -%1$tm - %1$te \n",c);
		
		//출력서식 사용할 때 형식(문법)
		// %[argument_index$][flags][width][.precision]conversion
		boolean gender = true;
		System.out.printf("%b \n", gender);
		
		int tot =277;
		double avg =92.3333333333333;
		//width 숫자
		System.out.printf("총점 : [%10d] \n",tot);
		System.out.printf("총점 : [%-10d] \n",tot);
		//소수점주기
		System.out.printf("평균 : [%10.2f] \n",avg);
		
		int money = 123456;
		System.out.printf("머니 : %,d \n",money); // 천단위 콤마 찍기 
		int no = 15;
		// 0015 앞에 0붙히기
		System.out.printf("NO : [%04d] \n",no);
		
		
	}

}
