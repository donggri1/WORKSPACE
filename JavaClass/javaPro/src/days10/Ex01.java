package days10;

import java.util.Arrays;

public class Ex01 {

	public static void main(String[] args) {
		
		
		int n = 10;
		int reminder,share;//나머지저장할 변수
		
		while ( n!= 0 ) {//n>0
			reminder = n%8;
			share = n/8;//n=n/2
			System.out.println(reminder);
			n=share;
			
			System.out.println(strResult);
			
			String reverseStrResult = "";
			for (int i = 0; i < args.length; i++) {
				reverseStrResult += strResult.chaAt(strResult.lengt()-1-i);
				
			} 
			System.out.println(reverseStrResult);
			
			Integer.toOctalString(n);
		}//while

		
	}// main

}//class
