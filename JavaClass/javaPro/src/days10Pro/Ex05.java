package days10;

import java.util.Arrays;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오후 5:30:38
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
		
		int [] m = {1,2};		
		System.out.println( "main-m:"+  Arrays.toString(m) );
		
		// m[2]=3;
		m = increaseM(m);
		
		System.out.println( "main-m:"+  Arrays.toString(m) );
	} // main

	private static int [] increaseM(int[] m) {
		 
		int [] temp = new int[m.length + 2];
		
		for (int i = 0; i < m.length; i++) {
			temp[i] = m[i];
		}
		
		//m = temp;
		System.out.println( "inc-m:"+ Arrays.toString(m) );
		return temp;
	}

} // class







