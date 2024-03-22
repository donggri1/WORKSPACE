package days05;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 5. - 오후 3:36:24
 * @subject if, switch,for,while, do ~ While
 * @content	break 
 */
public class Ex07_02 {

	public static void main(String[] args) {

		/*
		 * while / do~while 차이점
		 * 
		 * 
		 */
		/*
		int i = 10;
		while ( i<2) {
			System.out.println("A");
		}
		do {
			
		} while (i<2); {	
		}
		*/
//		5번,종료
		   int kor ;
		      Scanner sc = new Scanner(System.in);
		      String strKor ;
		      int i =0;
		      int sum=0;
//		      String regex = "\\d{1,3}"; // 정규식 표현 \\d 의 뜻은 0~9까지의 숫자, {1,3}은 1자리수부터 3자리수까지 범위 제한
		      String regex = "\\d{1,2}|100"; 
		      do {
		         System.out.printf((i !=0 ?"다시 입력하세요>":"국어 점수를 입력하세요> "));
		         strKor = sc.next();
		         i++;
		        sum+=i;
		        if (i==5) {
					System.out.println("오늘은 여기까지");
					return;
				}
		      } while (!strKor.matches(regex));
		         kor = Integer.parseInt(strKor);
		         System.out.println("입력된 국어 점수 : "+ kor);
		      }
		      
		   
	}


