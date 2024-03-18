package days24;

import java.util.ArrayList;
import java.util.Comparator;

import static java.util.Collections.*;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오전 11:24:13
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {
		// Arrays 클래스 : 배열 사용하기 쉽도록 기능(메서드)
		//					이 구현된 클래스
		// [ Collections 클래스 ]
		ArrayList<Integer> list = new ArrayList<>();
		System.out.println( list ); // []
		//list.add(1);		
		//list.add(2);		
		//list.add(3);		
		//list.add(4);		
		//list.add(5);		
		// <? super T>	매개변수 다형성
		addAll(list ,1,2,3,4,5);
		System.out.println(list);
		
		// rotate(2) 2칸씩 오른쪽으로 이동
		// rotate(-2)2칸씩 왼쪽으로 이동
		/*
		int distance = -2;
		Collections.rotate(list, distance);
		System.out.println(list);
		 */
		/*
		Collections.swap(list, 0, 3);
		System.out.println(list);
		*/
		/*
		// shuffle() 임의의 자리 변경 함수
		Collections.shuffle(list);
		Collections.shuffle(list);
		shuffle(list);
		*/
		//오름차순 정렬
		sort(list);
		System.out.println(list);
		// 내림차순 정렬
		// sort(list, (o1,o2)->o2-o1);
		/*
		sort(list, new Comparator<Integer>() {

			@Override
			public int compare(Integer o1, Integer o2) {
				
				return o2-o1;
			}			
		});
		*/
		sort(list , reverseOrder());
		System.out.println(list);
		
		fill(list, 0);
		System.out.println(list);
		
		
		
		
		
		
		
		
		
	}//main

}











