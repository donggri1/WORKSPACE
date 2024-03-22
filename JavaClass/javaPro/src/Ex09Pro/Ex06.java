package days09;

import java.util.Arrays;

/**
 * @author kenik
 * @date 2024. 1. 11. - 오전 11:34:23
 * @subject
 * @content
 */
public class Ex06 {

	public static void main(String[] args) {
		// 정수를 입력받아서 2진수로 출력하는 코딩을 하세요. 
		//                   int(4byte)
		// 10 => 00000000 00000000 00000000 00001010

		// [2]
		int [] binaryArr = new int[32];
		int n = 10;
		int index = binaryArr.length -1; // 배열크기 - 1
		int remider, share;  //

		// 12:02 수업 시작~ 
		while ( n != 0 ) {  // n > 0
			share = n / 2;
			remider = n % 2;
			binaryArr[index--] = remider;
			n = share;
		} // while

		// System.out.println( Arrays.toString(binaryArr) );
		
	    for (int i = 0; i < binaryArr.length; i++) {
			System.out.printf("%d", binaryArr[i]);
			if( i%8 == 7 ) System.out.print(" ");
		}


		/* [1]
		int n = 10;
		String binaryN = Integer.toBinaryString(n);
		System.out.println( binaryN ); // "1010";

		//System.out.printf("%032d", 1010);
		// String  -> Int 변환
		System.out.printf("%032d", Integer.parseInt(binaryN) );
		
		// String value = String.format("%032d", Integer.parseInt(binaryN));
		 */

	} // main

} // class











