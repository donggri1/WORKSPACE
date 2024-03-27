package days12;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오전 10:29:05
 * @subject
 * @content
 */
public class Ex02_02 {

	public static void main(String[] args) {
		/*
		//2행 4열 2차원배열
		int [][] m = new int [2][4];
		//2차원배열 = 1차원 배열의 배열이다.(그림)
		
		System.out.println(m.length);	//2	행갯수
		System.out.println(m[0].length);//4 0행의 열갯수
		System.out.println(m[1].length);//4 1행의 열갯수
		*/
		/*
		int [][] m = new int[][] {
									{1,2,3,4},
									{5,6,7,8}
		};
		*/
		int [][] m = {
							{1,2,3,4},
							{5,6,7,8}
		};
		
		dsipM(m);
	}//main

	private static void dsipM(int[][] m) {
		for (int i = 0; i < m.length; i++) { //행갯수
			for (int j = 0; j < m[i].length; j++) { //열갯수
				System.out.printf("m[%d][%d]=%d",i,j,m[i][j]);
			}System.out.println();
		}
		
	}

}//class
