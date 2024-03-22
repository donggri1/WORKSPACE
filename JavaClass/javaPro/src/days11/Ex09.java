package days11;

import java.util.Arrays;
import java.util.Random;
import java.util.stream.IntStream;

/**
 * @author LEE
 * @date 2024. 1. 15. - 오후 3:19:39
 * @subject
 * @content
 */
public class Ex09 {

	public static void main(String[] args) {
//		int [] m = new Random().ints(100,0,10).toArray();
		int [] m= {1, 2, 0, 0, 8, 3, 3, 0, 3, 2, 7, 0, 9, 3, 0, 0, 6, 8, 4, 3, 9, 4, 6, 6, 2, 1, 5, 5, 8, 4, 9, 4, 2, 4, 3, 8, 7, 3, 6, 3, 5, 7, 1, 9, 5, 8, 0, 1, 0, 5, 9, 3, 7, 9, 6, 9, 3, 1, 0, 0, 4, 7, 9, 7, 1, 7, 2, 0, 8, 9, 2, 2, 3, 8, 6, 8, 8, 3, 3, 7, 4, 1, 5, 1, 4, 4, 9, 0, 5, 9, 0, 3, 6, 6, 2, 8, 8, 8, 1, 4};
		System.out.println(Arrays.toString(m));
		

		
		//풀이 [1]
		/*
		 int count=0 ;
	      for (int i = 0; i <10; i++) {
	         count =0;
	         for (int j = 0; j < m.length; j++) { 
	            if (i==m[j]) {
	               count++;
	            } 
	            
	         }
	         System.out.println(i +"-"+count+"개");
	      }
	      */
		
		//[2]
		
		int [] countArray=new  int [10];
		for (int i = 0; i < m.length; i++) {
			int index = m[i];
			countArray[index]++;
			
		}
		System.out.println(Arrays.toString(countArray));
		
		//[출력결과]
		//0-5개
		//1-16개
		//:
		//9 -22개
		
		

	}

}
