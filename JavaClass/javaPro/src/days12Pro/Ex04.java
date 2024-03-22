package days12Pro;

/**
 * @author kenik
 * @date 2024. 1. 16. - 오전 11:33:11
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {
		
		int [] m = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12  };
		dispM(m);
		
		int [][] n = new int[3][4];
		int row = n.length;
		int col = n[0].length;
		
		// 1차원 배열 -> 2차원 배열 옮기는 코딩.
		//        행 열
		// i=0     0 0
		// i=1     0 1
		// i=2     0 2
		// i=3     0 3
		
		// i=4     1 0
		// i=5     1 1
		// i=6     1 2
		// i=7     1 3
		
		// i=8     2 0
		// i=9     2 1
		// i=10    2 2
		// i=11    2 3
		for (int i = 0; i < m.length; i++) {
			n[i/col][i%col] = m[i];
		} 
	
		dispN(n);
		
		
		// 2차원 배열 -> 1차원 배열 옮기는 코딩.
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










