package days12;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오전 10:29:05
 * @subject
 * @content
 */
public class Ex02_03 {

	public static void main(String[] args) {
		
		/*
		//2면 2행 2열 3차원배열
		int [][][] m = new int [2][2][2];
		//3차원배열 = 2차원 배열의 배열이다.(그림)
		
		System.out.println(m.length);	//2	면갯수
		
		System.out.println(m[0].length);//2 행갯수
		System.out.println(m[1].length);//2 행갯수
		
		System.out.println(m[0][0].length);//2 열갯수
		System.out.println(m[0][1].length);//2 열갯수
		System.out.println(m[1][0].length);//2 열갯수
		System.out.println(m[1][1].length);//2 열갯수
		*/
		

		int [][][] m = {
							{
									{1,2,3,4},
									{5,6,7,8}
								},
							{
									{1,2,3,4},
									{5,6,7,8}
}
		};
		dsipM(m);
	}//main

	private static void dsipM(int[][][] m) {
		for (int i = 0; i < m.length; i++) { //면
			System.out.printf("%d면\n",i);
			for (int j = 0; j < m[i].length; j++) { //행갯수
				for (int k = 0; k < m.length; k++) {
					System.out.printf("m[%d][%d][%d]=%d ",i,j,k,m[i][j][k]);
				}System.out.println();
				
			}System.out.println();
		}
		
	}

}//class
