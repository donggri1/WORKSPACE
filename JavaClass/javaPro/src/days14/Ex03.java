package days14;

/**
 * @author LEE
 * @date 2024. 1. 18. - 오전 11:06:05
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		/*
		//1)지역변수 설정안됨오류
		int [] m = null;
		int[]m = new int[3];
		
		//2)NullPointerException
		//3)ArrayIndexOutOfBoundsException
		System.out.println(m[3]);
		*/ 
		
		//The local variable tv1 may not have been initialized
		//NullPointerException
		Tv tv1 = null;
		System.out.println( tv1.channel);
		
	}//main

}//class
