package days19;

import java.util.StringTokenizer;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 12:16:29
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {
		// StringTokenizer 클래스
		// String.split()
		String s = "구본혁, 권맑음, 김영진, 김진성";
		StringTokenizer st = new StringTokenizer(s, ",");
		
		System.out.println(st.countTokens());
		System.out.println(st.hasMoreElements());// boolane true/flase
		System.out.println(st.nextElement());
		System.out.println(st.hasMoreElements());//boolane true/flase
		System.out.println(st.nextElement());//boolane true/flase
		System.out.println(st.hasMoreElements());//boolane true/flase
		System.out.println(st.nextElement());
		while (st.hasMoreElements()) {
			String name = st.nextToken();
			System.out.println(name.stripLeading());
		}
		

		
	}//main

}//class
