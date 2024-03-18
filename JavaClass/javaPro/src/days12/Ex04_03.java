package days12;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오전 11:33:44
 * @subject [수업 종료 후 풀어보기]
 * @content
 */
public class Ex04_03 {

	public static void main(String[] args) {
		
		//3행 4열 2차원 배열
		int [][] n = {
				{1,2,3,4},
				{5,6,7,8},
				{9,10,11,12}
		};
		// 2행 6열 2차원 배열
		int [][] m = new int [2][6];
		
		//n->m
	

	}//main

	private static void dispN(int[][] n) {
		for (int i = 0; i < n.length; i++) {
			
			for (int j = 0; j < n[i].length; j++) {
				System.out.printf("m[%d][%d]=%d ",i,j,n[i][j]);
			}System.out.println();
		}
		
		
	}

	private static void dispM(int[] m) {
		for (int i = 0; i < m.length; i++) {
			System.out.printf("m[%d]=%d ",i,m[i]);
		}
		
	}

}//class