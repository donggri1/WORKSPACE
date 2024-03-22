package days12;

/**
 * @author kenik
 * @date 2024. 1. 16. - 오전 10:29:04
 * @subject
 * @content
 */
public class Ex02_03 {

	public static void main(String[] args) {
		// 2면 2행 2열   3차원배열 
		/*
		int [][][] m = new int[2][2][2];
		// 3차원배열 = 2차원배열의 배열이다. ( 그림 )
		
		System.out.println( m.length );    // 2  면갯수	
			
		System.out.println( m[0].length ); // 2  행갯수
		System.out.println( m[1].length ); // 2  행갯수
		
		System.out.println( m[0][0].length ); // 2  열갯수
		System.out.println( m[0][1].length ); // 2  열갯수
		System.out.println( m[1][0].length ); // 2  열갯수
		System.out.println( m[1][1].length ); // 2  열갯수
		*/
		
		// 2면 2행 4열 3차원배열 초기화						
		int [][][] m = {  
						        {
									{1,2,3,4},
									{5,6,7,8}
								 },
								 {
									{11,12,13,14},
									{15,16,17,18}
							     }
					 };
		
		dispM(m); // 3차원배열을 매개변수 사용

	} // main
    // 11:01 수업시작~ 
	private static void dispM(int[][][] m) {
		for (int i = 0; i < m.length; i++) {  // 면 갯수
			System.out.printf("[%d]면\n", i);
			for (int j = 0; j < m[i].length; j++) { // 행갯수
				
				for (int k = 0; k < m[i][j].length; k++) { // 열 갯수
					System.out.printf("m[%d][%d][%d]=%d ", i, j, k, m[i][j][k]);
				}
				System.out.println();
				
			}
			System.out.println();
		}		
	}

} // class










