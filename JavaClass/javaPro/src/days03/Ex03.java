package days03;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오전 11:44:39
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {

		String input = "1 fish 2 fish red fish blue fish";
		//\\s*fish\\s* 구분자
		// \s==space==공백
		//* 반복횟수 0~여러개
		Scanner s = new Scanner(input).useDelimiter("\\s*fish\\s*"); //기본은 공백
		System.out.println(s.nextInt());
		System.out.println(s.next());
		System.out.println(s.nextInt());
		System.out.println(s.next());
		
		System.out.println(s.next());
		System.out.println(s.next());
		System.out.println(s.next());
		System.out.println(s.next());
		s.close();

	}

}
