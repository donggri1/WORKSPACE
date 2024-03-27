package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오전 11:19:47
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {

		
		int i = Integer.MAX_VALUE; //100;
		int j = 100;
		
		
		long k = (long)i + j;// 산술 오버플로워(overflow) 발생
		
		System.out.printf("%d+%d=%d\n",i,j,k);
		

	}//main

}//class
