package days22;

import java.util.HashSet;

/**
 * @author LEE
 * @date 2024. 1. 30. - 오후 2:18:53
 * @subject
 * @content
 */
public class Ex09 {
	public static void main(String[] args) {
		// Collection
		// ㄴ List - ArrayList, Vector, LinkedList, Stack, Queue(LinkedList), PriorityQueue
		// ㄴ Set - 순서 유지 X, 중복 허용 X
		//			HashSet 컬렉션 클래스
		//			만약 ) Set + 순서 유지원한다면 -> LinkedHashSet 컬렉션 클래스를 사용한다.
		//						[중복허용x]
		//HashSet hs = new HashSet(16,0.75);
		HashSet hs = new HashSet(); // 디폴트 생성자
		// hs.add();		hs.addAll();
		hs.add(9);
		hs.add(1);
		hs.add(15);
		hs.add(10);
		
		System.out.println(hs);//[1, 9, 10, 15]
		
		hs.add(1);
		System.out.println(hs);//[1, 9, 10, 15]
		
		
	}//main
}//class
