package days12;

/**
 * @author kenik
 * @date 2024. 1. 16. - 오전 10:29:04
 * @subject
 * @content
 */
public class Ex02_02 {

	public static void main(String[] args) {
		// 2행 4열   2차원배열 
		/*
		int [][] m = new int[2][4];
		// 2차원배열 = 1차원배열의 배열이다. ( 그림 )
		
		System.out.println( m.length );    // 2  행갯수		
		System.out.println( m[0].length ); // 4  0행의 열갯수
		System.out.println( m[1].length ); // 4  1행의 열갯수
		*/
		
		// 2행 4열 2차원배열 초기화
		/*
		int [][] m = new int[][] {
									{1,2,3,4},
									{5,6,7,8}
								};
		*/						
		int [][] m =  {
						{1,2,3,4},
						{5,6,7,8}
					 };
		
		dispM(m); // 2차원배열을 매개변수 사용

	} // main

	private static void dispM(int[][] m) {
		for (int i = 0; i < m.length; i++) {  // 행 갯수
			for (int j = 0; j < m[i].length; j++) { // 열(별)갯수
			   System.out.printf("m[%d][%d]=%d ", i, j, m[i][j]);	
			}
			System.out.println();
		}		
	}

} // class










