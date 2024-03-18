package days06;



/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 4:17:46
 * @subject
 * @content
 */
public class Ex07_04 {

	public static void main(String[] args) {

		//구구단 세로출력
	
	
		for (int i = 1; i < 9; i++) {
			
			
			for (int d = 2; d <= 9; d++) {
				System.out.printf("%d*%d=%02d ",d,i,i*d);
			}System.out.println();
			
		}
		
		
		/*
		for (int d = 2; d < 9; d++) {
//			System.out.printf("[%d단]",d);
			for (int i = 1; i <=9;i++) {
				System.out.printf("%d*%d=%02d ",d,i,d*i);
			}//for i 
			System.out.println();
		}//for d
		*/
	}//main

}//class
