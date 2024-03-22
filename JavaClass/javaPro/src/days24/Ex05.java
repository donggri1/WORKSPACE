package days24;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오후 12:28:07
 * @subject
 * @content
 */
public class Ex05 {
	public static void main(String[] args) {
		/*
		 * [익명(==무명, Anonymous) 클래스]
		 * 1. 이름이 없는 클래스
		 * 2. 선언 형식
		 * 
		 * 	부모클래스타입 객체 = new 부모클래스타입 (); XXX
		 * 
		 * 	new 부모클래스타입(매개변수...){
		 * 		@Override 부모의 메서드를 재정의함수 구현
		 * 					:
		 * }
		 * 
		 * 	new 부모인터페이스타입(매개변수...){
		 * 		@Override 부모의 메서드를 재정의함수 구현
		 * 					:
		 * }
		 * 3. 자식 클래스가 재사용하지 않고, 오로지 해당
		 *	  필드의 초기값으로만 사용 할 경우에 익명 클래스를 사용한다.
		 *
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 */
		
		ArrayList<Integer>list = new ArrayList<Integer>();
		
		Collections.sort(list,new Comparator<Integer>() {

			@Override
			public int compare(Integer o1, Integer o2) {
				return o2-o1;
			}
		});
		
		
	}
}
