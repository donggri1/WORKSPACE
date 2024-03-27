package days19;


public class Solution {
	public static void main(String[] args) {

		String my_string = "string";

		int num = 34 ;
		int n = 3 ;

		int answer = solution(num,n);
		System.out.println(answer);

	}//main

	private static int solution(int num, int n) {
		
		if (num%n==0) {
			return 1;
		} else {
		return 0;
		}
		
	
	}


}//class


