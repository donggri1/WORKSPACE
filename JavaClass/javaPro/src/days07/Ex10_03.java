package days07;

import java.util.stream.IntStream;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오후 5:14:15
 * @subject
 * @content
 */
public class Ex10_03 {

	public static void main(String[] args) {
		//가변인자
		int result = 0;
		result = sum(1,2);
		System.out.println(result);
		
		result = sum(1,2,3,4,5);
		System.out.println(result);
		
		int [] m = { 5,6,7,8,9 };
		result = sum(m);
		System.out.println(result);

		
//		public static int sum(int... args ) {
//			return  IntStream.of(args).sum();
//		}

	}//main
	
	public static int sum(int...args) {
		return IntStream.of(args).sum();
	}
	
}//class
