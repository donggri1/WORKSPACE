package days21;

import java.util.ArrayList;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오후 5:10:07
 * @subject
 * @content
 */
public class Ex16 {
	public static void main(String[] args) {

		ArrayList list = new ArrayList();
		
		list.add("원대안");
		list.add("이시은");
		list.add("박우현");
		list.add("이재호");
		list.add("윤형준");
		list.add("이동찬");
		list.add("한재호");
		list.add("이동영");
		list.add("류영은");
		
		System.out.println( list );
		
		//[1]
		/*
		// 팀에서 "이"씨인 팀원을 삭제하려고 합니다.
		for (int i = 0; i < list.size(); i++) {
			String name = (String)list.get(i);
			//if(name.startsWith("이")) {
			if(name.charAt(0)=='이') {
				System.out.println(name);
				list.remove(name);//이 씨 팀원을 삭제..
			}
			
		}
		*/
		
		//[암기] 위의 코딩하고 처리 과정이 동일
		
		list.removeIf( n -> ((String)n).charAt(0)=='이');		
		
		
		System.out.println( list );
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class











