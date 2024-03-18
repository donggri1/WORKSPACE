package days19;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오전 10:44:35
 * @subject
 * @content
 */
public class Ex01_03 {
	
	public static void main(String[] args) {
		
		String [] names = {"윤형준","원대한","이동찬","유진"};
		
		//[원대안, 유진, 윤형준, 이동찬]
		System.out.println(Arrays.toString(names));
		
		//Arrays.sort(names);
		//Arrays.sort(names,Collections.reverseOrder());
		
		/*				익명 클래스
		Arrays.sort(names,new Comparator<T>() {

			@Override
			public int compare(String o1, String o2) {
				
				return o2.compareTo(o1);
			}});
		*/
		
		// 위 주석 코딩 하고 100% 동일한 코딩.
		Arrays.sort(names,(o1, o2)->o2.compareTo(o1));
		
		System.out.println(Arrays.toString(names));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
}//class
