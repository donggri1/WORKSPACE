package days08;

import java.util.Iterator;
import java.util.Random;

/**
 * @author kenik
 * @date 2024. 1. 10. - 오후 2:29:07
 * @subject
 * @content
 */
public class Ex05_04 {

	public static void main(String[] args) {
		
		int [] lotto = new int[6];
		
		fillLotto(lotto);  // Call By Reference
		
		dispLotto(lotto);
		
	} // main

	private static void dispLotto(int[] lotto) {
		for (int i = 0; i < lotto.length; i++) {
			System.out.printf("lotto[%d]=[%d]\n", i, lotto[i]);
		}
		System.out.println();		 
	}

	private static void fillLotto(int[] lotto) { 
		Random rnd = new Random(); 
	    int lottoNumber = rnd.nextInt(45)+1;
	    lotto[0] = lottoNumber;
	    System.out.println(lottoNumber); 
	    
	    int index = 1;	     
	    while (index<=5) {	    	 
	    	lottoNumber = rnd.nextInt(45)+1;
	    	System.out.println(lottoNumber);
	    	
	    	if( !isDuplicateLotto(lotto,lottoNumber , index ) ) 
	    		lotto[index++] = lottoNumber;
	    	//index++;
		} // while
	}

	// 중복이 되면 true 반환
	// 중복이 되지 않으면 false 반환
	private static boolean isDuplicateLotto(int[] lotto, int lottoNumber, int index) {
		for (int i = 0; i < index; i++) {
			if( lottoNumber == lotto[i]) {
				return true;					 
			}
		}
		return false;
	}

} // class







