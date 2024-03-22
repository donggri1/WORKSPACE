package days10;

import java.util.Arrays;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오후 4:31:09
 * @subject
 * @content
 */
public class Ex04_02 {

	public static void main(String[] args) {
		int [] m = new int[3];
		int index = 0;
		
		m[index++] = 1;
		m[index++] = 2;
		m[index++] = 3;		
		// index == 3   ArrayIndexOutOfBoundsException
		if( m.length == index ) {
			int [] temp = new int[m.length + 3];
			
			for (int i = 0; i < m.length; i++) {
				temp[i]= m[i];
			}
			m = temp;
		} // if		
		m[index++] = 4;		
		System.out.println( Arrays.toString( m ));

	} // main

} // class


/*
m에다가 temp 주소값을 대입하면 
m공간도 temp배열의 크기만큼 늘어나는건가요?
*/		
