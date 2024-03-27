package days08;

public class Ex04_04 {

	public static void main(String[] args) {
		//[문제]
		//[거듭제곱] == 누승 == 멱 == pow
		//밑수 (2)를 지수 (3)만큼 반복해서 곱하는 것.
		//2^3 = 2*2*2 = 8
		//2^-3
		
		int result = pow(2,3);
		//int result = pow(2,-3);테스트때 꼭해보기
		System.out.println(result);
		

	}//main
	//일반함수
	private static int pow(int x, int y) {
		for (int i= 0; i <= y; i++) {
			Math.pow(x, y);
			System.out.printf("%d*",i);
		}
		return 0;
	}
	//재귀함수
	private static int recursivePow(int 밑수, int 지수) {
		
		return 0;
	}
	
}//class
