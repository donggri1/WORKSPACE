package days06;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 3:50:11
 * @subject
 * @content
 */
public class Ex06_02 {

	public static void main(String[] args) {


		String name;
		Scanner scanner = new Scanner(System.in);
		name = scanner.nextLine(); //lee dong chan
		System.out.printf("name : %s\n",name);
		
		//String.toCharArray()
		//1 String -> char[] 변환하는 함수(메서드)
		char [] nameCharArray =name.toCharArray();
		
		//배열안의 값을 확인하는 용도로 Arrays.toString() 메서드를 활용
		//[l, e, e,  , d, o, n, g,  , c, h, a, n]
		System.out.println( Arrays.toString(nameCharArray));
		
		//2) char[] -> String 변환하는방법 : String.valueOf() 메서드
		//name : lee dong chan
		name = String.valueOf(nameCharArray);
		System.out.printf("name : %s\n",name);
		

	}

}
