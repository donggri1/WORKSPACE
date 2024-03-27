package days06;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Random;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 12:02:24
 * @subject
 * @content
 */
public class Ex02_02 {

	public static void main(String[] args) {
		//2.[몰라도 되지만 암기하면 좋음]
//		2. 정수를 10개 저장할 배열 m 을 선언하고 5<= n && n <= 15 
//			범위의 임의의 정수로 채워넣은 후 배열의 각 요소를 출력하는 코딩을 하세요.
		/*
		int [] m = new Random().ints(5,16).limit(10).toArray();
		//=		int [] m = new int [10];
		//for (int i = 0; i < m.length; i++) {
		//	m[i] =(int)(Math.random()*11)+5;
		//[9, 8, 5, 12, 15, 6, 9, 10, 11, 11]
		System.out.println(Arrays.toString(m));
		*/
		
		int max = new Random().ints(5,16).limit(10).max().getAsInt();
		System.out.println(max);
		
		
		
	}//main

}//class
