package days22;

import java.util.LinkedList;

/**
 * @author LEE
 * @date 2024. 1. 30. - 오후 12:04:51
 * @subject
 * @content
 */
public class Ex05_02 {
	public static void main(String[] args) {
		
		LinkedList list = new LinkedList();
		list.add("김호영");
		list.add("이지현");
		list.add("김정주");
		System.out.println(list);
		
		list.addFirst("유희진");
		System.out.println(list);
		
		System.out.println( list.size());
		
		list.contains("홍길동"); //false
		list.indexOf("홍길동");	//-1
		list.lastIndexOf("홍길동");	//-1
		
		// 이지현을 찾아서 "고경림"으로 이름을 수정
		
		int index = -1;
		if((index=list.indexOf("이지현"))!=-1)
		list.set(index, "고경림");
		
		//				읽기		삽입/삭제	비고
		//ArrayList		빠르다		느리다.		순차적으로 추가,삭제 빠르다.
		//LinkedList	느리다		빠르다.		데이터 많으면 많을 수록 접근성은 떨어진다.
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class
