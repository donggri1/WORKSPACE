package days07;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오전 11:50:49
 * @subject
 * @content
 */
public class Ex04_02 {

	public static void main(String[] args) {

		int [] kors = { 99 , 1, 100 , -10 , 101};
		String regex = "[1-9]?\\d||100";
		
		for (int i = 0; i < kors.length; i++) {
			int kor = kors[i];
			/*
			if (kor >0 && kor <= 100) {
				System.out.println( kor);
				
			}*/
		if( (kor+"").matches(regex)) {
			System.out.println(kor);
		}
		
		}
		
		
		

	}//main

}//class
