package days18;

/**
 * @author LEE
 * @date 2024. 1. 24. - 오후 4:44:44
 * @subject
 * @content
 */
public class Ex06_04 {

		public static void main(String[] args) {
	/*
      문제 설명
      길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 
      문자열을 리턴하는 함수, solution을 완성하세요. 
      예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 
      "수박수"를 리턴하면 됩니다.

      제한 조건
      n은 길이 10,000이하인 자연수입니다.
      입출력 예
      n   return
      3   "수박수"
      4   "수박수박"
      */
		      
		System.out.println(solution(3)); // "수박수"
		System.out.println(solution(3)); // "수박수박"

		
		
		
	}//main

		private static String solution(int i) {
			String answer = "";
			int n=0;
			StringBuffer sb =new StringBuffer();
			
			int 몫 = n/2;
			int 나머지 = n%2;
			
			for (int j = 0; j < 몫;	j++) sb.append("수박");
			if(나머지 ==1) sb.append('수');
			
			answer = sb.toString();
			return answer ;
		}


}//class
