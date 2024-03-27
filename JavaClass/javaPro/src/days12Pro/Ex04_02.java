package days12;

/**
 * @author kenik
 * @date 2024. 1. 16. - 오전 11:33:11
 * @subject
 * @content
 */
public class Ex04_02 {

	public static void main(String[] args) { 
		
		int [][] n = {
				{1,2,3,4},
				{5,6,7,8}
		};
		dispN(n);
		
		int row = n.length;
		int col = n[0].length;
		int [] m = new int[row*col];
		
		// 2차원 배열 -> 1차원 배열 옮기는 코딩.
		// 00 -> 0
		// 01 -> 1
		// 02 -> 2
		// 03 -> 3
		// 10 -> 4
		// ij           i*열갯수 + j
		for (int i = 0; i < n.length; i++) {
			for (int j = 0; j < n[i].length; j++) {
			  m[i*col + j] = n[i][j];
			}
		}
		
		dispM(m);
		
		
	} // main

	private static void dispN(int[][] n) {
		for (int i = 0; i < n.length; i++) {        // 행 갯수
			for (int j = 0; j < n[i].length; j++) { // 열(별)갯수
			   System.out.printf("n[%d][%d]=%d "
					   , i, j, n[i][j]);	
			}
			System.out.println();
		} 
	}

	private static void dispM(int[] m) {
		for (int i = 0; i < m.length; i++) {
			System.out.printf("m[%d]=%d ", i, m[i]);
		}
		System.out.println();
	}

} // class










