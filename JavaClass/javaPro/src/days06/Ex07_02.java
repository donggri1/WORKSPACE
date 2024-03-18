package days06;

import java.util.Iterator;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 4:17:46
 * @subject
 * @content
 */
public class Ex07_02 {

	public static void main(String[] args) {
		
		/*
		 * [구구단] == [multiplication table]
		 *  2단		== 2nd level == 2 dan
		 * 			[2 times table]
		 * 
		 * 
		 *2*1 =
		 *2*2 =
		 *2*3 =
		 *2*4 =
		 *2*5 =
		 *2*6 =
		 *2*6 =
		 *2*7 =
		 *2*8 =
		 *2*9 = 18
		 */
		
		//d=2
		//2단
		//	ㄴ i=1,2,3,4,5,6,7,8,9				i=10
		//d=3
		//3단
		//	ㄴ i=1,2,3,4,5,6,7,8,9				i=10
		//d=9
		//9단
		//	ㄴ i=1,2,3,4,5,6,7,8,9				i=10
		//d=10
		for (int d = 2; d < 9; d++) {
			System.out.printf("%d단\n",d);
			for (int i = 1; i <=9;i++) {
				System.out.printf("%d * %d = %d\n",d,i,d*i);
		}
			/*
		for (int i = 1; i <=9;i++) {
			System.out.printf("%d * %d = %d\n",2,i,2*i);
		}
		
		for (int i = 1; i <=9;i++) {
			System.out.printf("%d * %d = %d\n",2,i,2*i);
		}
		*/
		}
	}//main

}//class
