package days07;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오후 12:36:28
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
		// [순서도]
		//  ㄴ 워크플로 혹은 프로세스를 보여주는 다이어그램의 한 종류
		// 1-2+3-4+5-6+7-8+9-10=-5
		// 짝수는 SUM -
		// 홀수는 SUM +
		int sum = 0;
		
		// 스위칭 변수
		boolean sw = false;
		
		for (int i = 1; i <= 10; i++) {
			// [4]
			System.out.printf( sw ?"%d+":"%d-", i);
			sum +=  sw? -i: i;
			sw = !sw; 
			
			// *** [3] 스위칭 변수를 사용하는 방법.(기억)  
			/*
			if ( sw ) {  
				System.out.printf("%d+", i);
				sum -= i;
				// sw = !sw; 
			} else {  
				System.out.printf("%d-", i);
				sum += i;
				// sw = !sw; // false -> true
			} 
			sw = !sw;  
			*/
			
			// [2]
			/*
			System.out.printf(i%2 == 0?"%d+":"%d-", i);
			sum +=  i%2==0? -i: i;
			*/
			/* [1]
			if (i%2 == 0) { // 짝수
				System.out.printf("%d+", i);
				sum -= i;
			} else { // 홀수
				System.out.printf("%d-", i);
				sum += i;
			} 
			*/
			
		} // for
		System.out.printf("=%d\n", sum);
		

	} // main

} // class








