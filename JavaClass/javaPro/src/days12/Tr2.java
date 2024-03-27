package days12;

public class Tr2 {
	public static void main(String[] args) {
		int [] m = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12  };
//		dispM(m);
		//1차원을 2차원으로 2차원을 1차원으로
		
		
		int [][] n = new int[3][4];
		
		int row=n.length,col=n[0].length;

		for (int i = 0; i < n.length; i++) {
			m[i]=n[][];
		}
		
		dispN(n);
		
		
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
