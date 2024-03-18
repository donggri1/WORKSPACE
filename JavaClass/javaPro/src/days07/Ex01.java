package days07;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오전 9:43:12
 * @subject
 * @content
 */
public class Ex01 {

	public static void main(String[] args) {
		for (int k = 1; k <=2; k++) {
			for (int i = 1; i <=9 ; i++) {
				for (int j = 4*k-2; j <=4*k-2+3; j++) {
					System.out.printf(" %d * %d = %02d ", j , i ,j*i);
					
				}//for2
				System.out.println();	
			}//for
			
		}
		/*
		for (int i = 1; i <=9 ; i++) {
			for (int j = 2; j <=5; j++) {
				System.out.printf(" %d * %d = %02d ", j , i ,j*i);
				
			}//for2
			System.out.println();	
		}//for
		System.out.println();
		for (int i = 1; i <=9 ; i++) {
			for (int j = 6; j <=9; j++) {
				System.out.printf(" %d * %d = %02d ", j , i ,j*i);
				
			}//for2
			System.out.println();	
		}//for
		*/

	}//main
	}//class
