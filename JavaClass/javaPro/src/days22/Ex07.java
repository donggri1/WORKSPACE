package days22;

import java.util.LinkedList;
import java.util.Queue;

/**
 * @author LEE
 * @date 2024. 1. 30. - 오후 12:26:43
 * @subject
 * @content
 */
public class Ex07 {
	public static void main(String[] args) {
		// 큐(Queue) 구조
		// 디큐(Deque)구조 == 더블 큐 구조  /양방향으로 가능
		//	ㅡㅡㅡㅡㅡㅡㅡㅡ
		//-> 	C   B    A	->
		//	ㅡㅡㅡㅡㅡㅡㅡㅡ
		// offer()			poll(),peek()
		// FIFO 구조
		//			  LinkedList -> list, Deque ->queue -> Collection
		Queue q = new LinkedList();
		q.offer("권맑음");
		q.offer("이동찬");
		q.offer("김영진");
		
		// Deque 추가
		// q.offerFirst(q);
		// q.offerLast(q);
		// q.pollFirst()
		// q.pollLast()
		
		// FIFO 구조
		while (!q.isEmpty()) {
			System.out.println(q.poll());	
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class
