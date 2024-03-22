package days10;

import java.util.Arrays;

public class Ex01_03 {

	public static void main(String[] args) {
		//10 진수 정수 => 16진수 출력
		int n = 125;

		
		int reminder,share;//나머지저장할 변수
		String strHex = "";
		
		while ( n!= 0 ) {//n>0
			reminder = n%16;
			share = n/16;//n=n/2
			switch (reminder) {
			case 10: reminder= 'A';break;
			case 11: reminder= 'B';break;				
			case 12: reminder= 'C';break;
			case 13: reminder= 'D';break;
			case 14: reminder= 'E';break;
			case 15: reminder= 'F';break;
			default: reminder= reminder +'0'; break;
				
			}
//			System.out.println(reminder);
			
			n=share;
//			if (reminder>=10)strHex += "["+(char)reminder+"]";
//			else strHex += "["+reminder+"]";
			strHex += "["+(char)reminder+"]";
		}//while
		System.out.println(strHex);

		
	}// main

}//class
