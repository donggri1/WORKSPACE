package days10;

import java.util.Arrays;

public class Ex01_02 {

	public static void main(String[] args) {
		//10 진수 정수 => 16진수 출력
		int n = 125;

		
		int reminder,share;//나머지저장할 변수
		String strHex = "";
		char[]ch= {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
		while ( n!= 0 ) {//n>0
			reminder = n%16;
			share = n/16;
			strHex = ch[reminder] + strHex;
			n=share;
				
			}

		

		}//while


		
	}// main

}//class
