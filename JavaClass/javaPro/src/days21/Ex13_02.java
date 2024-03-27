package days21;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 * @author LEE
 * @date 2024. 1. 29. - 오후 3:17:41
 * @subject
 * @content
 */
public class Ex13_02 {
	public static void main(String[] args) {
		 //  1조 : 구본혁(팀장),류영은,윤형준,김영진,강명건,김진성,유진,이동찬
		 //  2조 : 원대안(팀장),이동영,한재호,권맑음,박우현,이시은,조연화
		
		ArrayList team1 = new ArrayList();
		String t1 = "구본혁(팀장),류영은,윤형준,김영진,강명건,김진성,유진,이동찬";
		String [] t1Names =  t1.split(",");
		for (int i = 0; i < t1Names.length; i++) {
			team1.add(t1Names[i]);
		}
		
		System.out.println(team1);
		
		
		ArrayList team2 = new ArrayList();
		String t2 = "원대안(팀장),이동영,한재호,권맑음,박우현,이시은,조연화";
		String [] t2Names =  t2.split(",");
		for (int i = 0; i < t2Names.length; i++) {
			team2.add(t2Names[i]);
		}
		
		System.out.println(team2);
		
//		ArrayList class5 = new ArrayList(team1);
		ArrayList class5 = new ArrayList();
		class5.addAll(team1);
		//class5.addAll(team2);
		
		System.out.println(class5);
		
		System.out.println( class5.containsAll(team2));
		
		ArrayList class5Clone =(ArrayList)  class5.clone();
		
		//class5Clone.remove(0);			//index
		//class5Clone.remove("윤형준");	//Object
		//class5Clone.removeAll(team1);
		
		/*[1] 정렬하는코딩
		class5Clone.sort( new Comparator() {

			@Override
			public int compare(Object o1, Object o2) {
				String s1 = (String)o1;
				String s2 = (String)o2;
				return s1.compareTo(s2); // 오름차순정렬
				//return s2.compareTo(s1); // 내림차순
			}
		});
		*/
		//위의 코딩과 100% 동일한 코딩 - 람다식
		//Class5Comparator.sort((o1,o2)->((String)o1).compareTo((String) o2));
		
		//[3]						Comparator 비교기
		//class5Clone.sort(String.CASE_INSENSITIVE_ORDER);
		
		//[4]
		// Arrays
		Collections.sort(class5Clone); //오름차순 정렬
			
		System.out.println("원본 : " +class5);
		System.out.println("복제 : " +class5Clone);
		
		
		
		
		
		
		
		
		
	}//main
}//class







