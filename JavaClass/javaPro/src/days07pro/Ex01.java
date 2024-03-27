package days07pro;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오전 7:40:13
 * @subject
 * @content
 */
public class Ex01 {

	public static void main(String[] args) {
		// 구구단을 세로 출력.
		// k=1    2 ~ 5
		// k=2    6 ~ 9
		for (int k = 1; k <= 2; k++) {
			// System.out.println("k=" + k);
			for (int i = 1; i <= 9; i++) {
				for (int j = 4*k-2; j <= 4*k-2+3 ; j++) { // 단
					System.out.printf("%d*%d=%02d ", j, i, j*i);
				} // for j
				System.out.println();
			} // for i 
			System.out.println();
		} // for k
		
		/*
		for (int i = 1; i <= 9; i++) {
			for (int j = 2; j <= 5 ; j++) { // 단
				System.out.printf("%d*%d=%02d ", j, i, j*i);
			} // for j
			System.out.println();
		} // for i 
		System.out.println();
		for (int i = 1; i <= 9; i++) {
			for (int j = 6; j <= 9 ; j++) { // 단
				System.out.printf("%d*%d=%02d ", j, i, j*i);
			} // for j
			System.out.println();
		} // for i
		*/
		
		// [문제]
		// [2][3][4]
		// [5][6][7]
		// [8][9]

	} // main

} // class
