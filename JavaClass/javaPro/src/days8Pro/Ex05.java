package days08;

import java.util.Random;

/**
 * @author kenik
 * @date 2024. 1. 10. - 오후 2:01:06
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
		// [ 로또 게임 ] 
		// Lotto 6/45
		// 1 ~ 45 임의의 정수 - 6개
		// 0.0 <= double Math.random() * 45 < 45.0
		// 0 <= (int)(Math.random() * 45) < 45
		// 1 <= (int)(Math.random() * 45) + 1 < 46
		
		// 중복 제거
		/*
		for (int i = 1; i <= 6 ; i++) {
			System.out.println( (int)(Math.random() * 45) + 1 );
		}
		*/
		
	    // [java.util.Random 클래스]
	    Random rnd = new Random();	   
	    for (int i = 1; i <= 60000 ; i++) {
	    	int lottoNumber = rnd.nextInt(45)+1;
	    	if( lottoNumber <0 || lottoNumber > 45  )
			  System.out.println(  lottoNumber );
		}
	    System.out.println("end");

	} // main

} // class






