package days12;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오전 11:33:44
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {

		
		int [] m = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12  };
		dispM(m);
		

		
		
		int [][] n =new int [3][4];
		dispN(n);
		//1차원 배열 ->2차원 배열 옮기는 코딩.
		
		
		for (int i = 0; i < m.length; i++) {
			n[i/col][i%col]=m[i];
			
		}
		
		//2차원 배열 ->1차원 배열 옮기는 코딩.
		
		
		

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
