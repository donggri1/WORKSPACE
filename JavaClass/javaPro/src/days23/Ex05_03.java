package days23;

import java.util.TreeSet;

/**
 * @author LEE
 * @date 2024. 1. 31. - 오후 12:21:47
 * @subject
 * @content
 */
public class Ex05_03 {
	public static void main(String[] args) {
		
		int [] score = { 80, 95 , 50 , 85 , 45 , 65, 10 , 100};
		// 1) 80 보다 큰 점수를 얻어와서 출력
		/*
		for (int i = 0; i < score.length; i++) {
			if(score[i]>80) System.out.println(score[i]);
		}
		*/
		
		
		// int [] 0 -> TreeSet<Integer> 변환
		TreeSet<Integer> ts = new TreeSet<>();
		for (int i = 0; i < score.length; i++) {
			ts.add(score[i]);
		}
		
		
		
		
		//지정된 값보다 작은 갑의 객체를 반환하는 메서드
		//ts.headSet(null);
		
		//지정된 값보다 큰값의 객체를 반환하는 메서드
		System.out.println(ts.tailSet(80)); // [80, 85, 95, 100]
		System.out.println(ts.tailSet(80, true)); // [80, 85, 95, 100]
		System.out.println(ts.tailSet(80, false)); // [85, 95, 100]

		
		
		
	}//main
}//class
