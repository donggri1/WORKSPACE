package days20;

import java.text.DecimalFormat;
import java.util.Arrays;

/**
 * @author LEE
 * @date 2024. 1. 26. - 오후 2:25:50
 * @subject [ 형식화 클래스 4가지 ]
 * @content	SimpleDateFormat ***
 * 			Decimal   Format
 * 			Choice	  Format
 * 			Message	  Format
 * 
 */

public class Ex06 {
	public static void main(String[] args) {
		//	[ Decimal   Format ]
		//		숫자	형식화하는 클래스
		//			7654321
		//int money = 3257600;
		//double money = 3257600.826;
		double money = 3257600.8;
		// [3] DeciamlFormat 숫자 ->형식화 클래스
		String pattern = "#,###.00";
		DecimalFormat df = new DecimalFormat(pattern);
		String result =  df.format(money);
		System.out.println(result);
		
		
		
		//[2]
//		String result =String.format("%,d", money);
//		System.out.println(result);
		
		
		/*
		String strMoney = money +"";
		int moneyLength = strMoney.length();
		String result = "";
		//for ( placeValue != 1 && placeValue % 3 == 1 ) {
		for (int i = 0; i < strMoney.length(); i++) {
			char one = strMoney.charAt(i);
			int placeValue = moneyLength - i ;
			//System.out.println( one + " "+placeValue);
			result +=one;
			if(placeValue%3 ==1 )
				result +=",";
			
			
			//System.out.print(one );
		}
		//System.out.println(result);
		System.out.println(result.substring(0,result.length()-1));
		*/
		
		// 3
		
		
		//출력 형식 :	통화기호 3,257,600
		
		
		
	}//main
}//class














