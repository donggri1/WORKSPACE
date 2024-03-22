package days07;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오후 2:20:50
 * @subject
 * @content
 */
public class Ex06 {

	public static void main(String[] args) {
		//int sum=0;
		//boolean sw =false;
		/*
		for (int i = 1; i <=10; i++) {
			
			if (i==1||i==10) {
				System.out.printf("%d+/",i);
				sum+=i;
			} else {System.out.printf("%d+%d/",i,i);
			 sum+=i+i;
			}						
		}System.out.printf("=%d",sum);
		*/
		//for (int i = 1; i <=10; i++) {
		//	System.out.printf("");}
		
		// 분자 1 2 3 4 5 6 7 ..9
		// 분모 2 3 4 5  .......10
		double sum = 0;
		for (int i = 2; i <=10; i++) {
			System.out.printf("%d/%d+",i,i+1);
			sum+=(i-1)/(double)i;
		}
		System.out.printf("=%f\n",sum);

	}//main

}//class
