package days13;

import java.util.stream.IntStream;

public class Ex02 {

	public static void main(String[] args) {

		int [][] m= new int[5][5];
		int n=1;
		
			
			
			
		for (int i = 0; i < 4; i++) {
			m[i][4]=m[0][0]+m[0][1]+m[0][2]+m[0][3];
			for (int j = 0; j < 4; j++) {
				m[i][j]=5*i+j+1;
				m[4][j]=m[3][0]+m[3][1]+m[3][2]+m[3][3];
				
				m[4][4]=m[i][4]+m[4][j];
				dispM(m);
		}
			
		dispM(m);
		
		//마방진
//		magicSquare(m);


		//		fillM04(m);
		//		fillM03(m);
		//		fillM02(m);
		//		fillM01(m);



		/*
		 * 00 01 02 03 04 i= 01234
		 * 14 13 12 11 10 i= 43210
		 * 20 21 22 23 24 i= 01234
		 * 34 33 32 31 30
		 * 40 41 42 43 44
		 */



	}//main
	private static void magicSquare(int[][] m) {
		// 1) 첫 번째 행의 가운데 열    1 
		// 2) 출력한 값이 5의 배수 O    행만 증가
		//                         X
		//          열증가, 행감소
		//              ㄴ행 벗어나는 경우 -가장 큰 행의 값으로 설정. 
		//              ㄴ열 벗어나는 경우 -가장 작은 열의 값으로 설정.

		int n = 1;
		int row = 0, col = 2;

		while( n <= 25) {
			m[row][col] = n;

			dispM(m);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}

			if (n % 5 == 0) {
				row++;
			} else {
				col++; row--;
				// 행 X, 열 X
				if( col == 5 ) col = 0;
				else if( row == -1) row = 4;
			}      
			n++;}
	} // while




	//[골뱅이]
	/*
	 *	[01][02][03][04][05]
		[16][17][18][19][06]
		[15][24][15][20][07]
		[14][23][22][21][08]
		[13][12][11][10][09]

	 */



	private static void fillM04(int[][] m) {
		for (int i = 0; i < m.length; i++) {
			for (int j = 0; j < m[i].length; j++) {

				m[i][i%2==0?j:4-j]=5*i+j+1;

			}
		}
	}
	/*1번
	private static void fillM04(int[][] m) {
		for (int i = 0; i < m.length; i++) {
			for (int j = 0; j < m[i].length; j++) {
//				if(i%2==0)m[i][j]=5*i+j+1 ;
//				else m[i][j] = (i+1)*5-j;
				m[i][j]=i%2==0?5*i+j+1:(i+1)*5-j;

			}
		}
	}
	 */
	/*
	 *  00->40
	 *  01->30 
	 *  
	 *  i=0 j=01234
	 *  i=1 j=01234
	 * 
	 */
	private static void fillM03(int[][] m) {
		for (int i = 0; i < m.length; i++) { // 행갯수
			for (int j = 0; j < m[i].length; j++) { // 열갯수
				m[i][j] = 5-i + 5*j;
			} // for j         
		} // for i
	}
	/*
	      [05][10][15][20][25]
	      [04][09][14][19][24]
	      [03][08][13][18][23]
	      [02][07][12][17][22]
	      [01][06][11][16][21]

	      00 -> 40
	      01 -> 30
	      02 -> 20
	      03 -> 10
	      04 -> 00

	      10 -> 41
	      11 -> 31
	      12 -> 21
	      13 -> 11
	      14 -> 01

	      20 -> 42
	      21 -> 32
	      22 -> 22
	      23 -> 12
	      24 -> 02



	 */
	// i=0 j=01234
	// i=1 j=01234
	// i=2 j=01234
	// i=3 j=01234
	// i=4 j=01234


	// [1]
	/*
	      for (int i = 0; i < m.length; i++) { // 행갯수
	         for (int j = 0; j < m[i].length; j++) { // 열갯수
	            m[4-j][i] = 5*i+j+1; 
	         } // for j         
	      } // for i
	 */


	//114 ~ 230까지 읽기 책
	private static void fillM02(int[][] m) {
		for (int i = 0; i < m.length; i++) {//행갯수
			for (int j = 0; j < m[i].length; j++) { //열갯수
				m[4-i][4-j]=25-(5*i+j);
			}//for j
		}//for i
	}

	/*
	private static void fillM02(int[][] m) {
	for (int i = 0; i < m.length; i++) {//행갯수
		for (int j = 0; j < m[i].length; j++) { //열갯수
			m[i][j]=25-(5*i+j);
		}//forj
	}//fori
	}
	 */
	/*
	private static void fillM02(int[][] m) {
	for (int i = 0,value=1; i < m.length; i++) {//행갯수
		for (int j = 0; j < m[i].length; j++,value++) { //열갯수
			m[i][j]=5*i+j+1;
		}//forj
	}//fori
	}
	 */

	/*
	private static void fillM02(int[][] m) {
		for (int i = 0,value=25; i < m.length; i++) {
			for (int j = 0; j < m.length; j++,value--) {
				m[i][j]=value;
			}
		}
	}
	 */


	/*
	private static void fillM01(int[][] m) {
		for (int i = 0,value=1; i < m.length; i++) {//행갯수
			for (int j = 0; j < m[i].length; j++,value++) { //열갯수
				m[i][j]=5*i+j+1;
			}//forj
		}//fori
	}//dispM
	 */
	private static void dispM(int[][] m) {
		for (int i = 0; i < m.length; i++) {//행갯수
			for (int j = 0; j < m[i].length; j++) { //열갯수
				System.out.printf("[%02d]",m[i][j]);
			}System.out.println();
		}
	}//dispM

}//class
