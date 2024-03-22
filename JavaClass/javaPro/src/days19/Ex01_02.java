package days19;

import java.text.CollationElementIterator;
import java.util.Arrays;
import java.util.Collections;
import java.util.stream.Stream;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오전 10:29:03
 * @subject
 * @content
 */
public class Ex01_02 {
	public static void main(String[] args) {
		//원대안 , 유진 , 윤형준, 이동찬
		int [] m = {3,5,2,4,1};// Integer 변경해야 컬렉션리버스사용가능
		System.out.println( Arrays.toString(m));
		// Bubble Sort, Selection Sort
		
		
		//The method sort(int[]) in the type Arrays is not applicable 
		//for the arguments (int[], Collections.reverseOrder())
		// 왜?  T[] 기본형은 못들어감
		//Arrays.sort(m,Collections.reverseOrder());
		/*
		Arrays.sort(m);//오름차순 정렬
		// 내림차순 정렬
		int [] temp = new int[m.length];
		for (int i = 0; i < m.length; i++) {
			temp [ m.length-1- i ] = m[i];
		}
		*/
		
		// int[] => Integer[]변환
		// 			<=		IntStream -> Stream<Integer>  boxed()의 역할 => Integer []
		//								<=								<=
		// boxing , unboxing
		Integer [] temp = Arrays.stream(m).boxed().toArray(Integer[]::new);
		Arrays.sort(temp, Collections.reverseOrder());
		
		//Integer [] = > int[] 변환
		//
		m= Stream.of(temp).mapToInt(Integer::intValue).toArray();
		System.out.println(Arrays.toString(m));
		
		
		
		
		
		
		
		
		
	}//main
	
}//class





