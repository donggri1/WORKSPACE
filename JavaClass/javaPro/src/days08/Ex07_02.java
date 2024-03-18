package days08;

/**
 * @author LEE
 * @date 2024. 1. 10. - 오후 5:23:23
 * @subject
 * @content
 */
public class Ex07_02 {

	public static void main(String[] args) {
//		5482250원
		
		int money = 54500;
		int count =0;
		int [] a = {50000,10000,5000,1000,500,100,50,10,5,1};
		
		for (int i = 0; i < a.length; i++) {
			
			count =money/a[i];
			
			System.out.printf("%d원 : %d 개 ",a[i],count);
			
			money%=a[i];
			
		}
		
		


	}

}
