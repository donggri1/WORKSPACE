package days08;

public class Ex04_03 {

	public static void main(String[] args) {
		//재귀함수예제
		//팩토리억 ( factorial ) == 계승
		//정의) 1에서 양의 정수의 곱
		// n!= n* (n-1) * (n-2) * ... *1
		//예) %1 = 5*4*3*2*1
		// 0! == 1(약속)
		int n = 5;
		//int result = factoral(n);
		int result = recursiveFactorial(n);
		System.out.println("="+result);
		
		
	}//main
	//재귀함수
	private static int recursiveFactorial(int n) {
		if (n==0) {
			return 1;
		} else {
			if (n==1) return n;
			else return n * recursiveFactorial(n-1);

		}
		
		
	}

	private static int factoral(int n) {
//		n!= n* (n-1) * (n-2) * ... *1
		int result =1;
		for (int i =n; i>=1; i--) {
			System.out.printf("%d*",i);
			result*=i;
		}
		return result;
	}

}//class
