package days04;


import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 5:31:46
 * @subject		key : 변수, 수식
		value: 리터럴(정수,문자,문자열),변수X
 * @content
 */
public class Ex07_02 {

	public static void main(String[] args) {

	      int kor;
	      char grade = '가';
	      
	      try(Scanner scanner = new Scanner(System.in)) {
	         System.out.print("> 국어 점수 입력 ? ");
	         kor = scanner.nextInt(); // 80
	         
	         // switch 문 사용해서 풀기
	         //90, 91 ~99 / 10 9
	         //80, 81 ~89 / 10 8
	         
	         switch ( kor/10) {
	         
			case  10:
				System.out.println("수");
				break;
			case  9:
				System.out.println("수");
				break;
			case  8:
				System.out.println("우");
				break;
			case  7:
				System.out.println("미");
				break;
			case  6:
				System.out.println("양");
				break;
			case  5:
				System.out.println("가");
				break;
			case  4:
				System.out.println("가");
				break;
			case  3:
				System.out.println("가");
				break;
			case  2:
				System.out.println("가");
				break;
			case  1:
				System.out.println("가");
				break;
			case  0:
				System.out.println("가");
				break;

			default :
				break;
								
			}
	         
	      } catch (Exception e) {
	    	  System.out.println("국어 점수(0~100). 입력잘못(숫자X)!!!");
	      } // try
		
	}

}
