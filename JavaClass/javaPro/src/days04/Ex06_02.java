package days04;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 4:02:13
 * @subject for문 사용해서 1~ N(10) 까지의 합 출력.
 * @content
 */
public class Ex06_02 {
	
	public static void main(String[] args) {
		int sum= 0;
		for (int i = 1; i <=10 ; i++) {
			System.out.printf("%d+",i);
			sum +=i; // sum=sum+i;
		}//for형식
		System.out.printf("\b=%d\n",sum);
	
	
	/*
	public static void main(String[] args) {
		int sum= 0;
		for (int i = 1; i <=10 ; i++) {
			System.out.printf(i==10?"%d":"%d+",i);
			sum +=i; // sum=sum+i;
		}//for형식
		System.out.printf("=%d\n",sum);
		*/
	
/*
	public static void main(String[] args) {
		int sum= 0;
		for (int i = 1; i <=10 ; i++) {
			if (i ==10) {
				System.out.printf("%d",i);
			} else {
				System.out.printf("%d+",i);
			}
			sum +=i; // sum=sum+i;
		}//for형식
		System.out.printf("=%d\n",sum);
		
*/
	}//main
}

