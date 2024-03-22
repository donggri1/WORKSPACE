package days12;

import java.util.Random;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오후 12:34:03
 * @subject	day08 Ex05_04 함수 활용
 * @content
 */
public class Ex06 {

	public static void main(String[] args) {
		
		//로또 게임 횟수 입력 (n) : 3
		int n = 5;
		//5행 6열 2차원 배열
		int[][] lotto = new int[n][6];
		
		for (int i = 0; i < n; i++) {
			fillLotto(lotto[i]);
		}	
		for (int i = 0; i < n; i++) {
			dispLotto(lotto[i]);
		}	
			


	}//main
	private static void dispLotto(int[] lotto) {
		for (int i = 0; i < lotto.length; i++) {
			System.out.printf("lotto[%d]=[%d]\n", i, lotto[i]);
		}
		System.out.println();       
	}

	private static void fillLotto(int[] lotto) {
		// 1. 
		Random rnd = new Random();
		// 2. lotto[0]
		int lottoNumber = rnd.nextInt(45)+1;
		lotto[0] = lottoNumber;
		System.out.println(lottoNumber);
		// 3
		int index = 1;

		while (index<=5) {
			lottoNumber = rnd.nextInt(45)+1;
			System.out.println(lottoNumber);
			
			if(!isDuplicateLotto(lotto,lottoNumber,index))
				lotto[index++] = lottoNumber;
			//index++;
		} // while



	}//main

	private static boolean isDuplicateLotto(int[] lotto, int lottoNumber, int index) {
		for (int i = 0; i <index ;i++) {
			if(lottoNumber ==lotto[i]) {
				return true;
			}
		}
		return false;	
	}

} // class