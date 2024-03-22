package days06;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 3:39:16
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
//		5. 두 정수(x, y)를 입력받아서 두 정수 사이의 짝수의 합을 출력하는 코딩을 하세요.
		
		int x,y,sum = 0;
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("x_y의 값 입력");
		x = scanner.nextInt();
		y= scanner.nextInt();
		
		int min = Math.min(x, y);
		int max = Math.max(x, y);
		/*[1]
		for (int i = min; i <= max; i++) {
			System.out.printf("%d+",i);
			sum+=i;			
		}
		System.out.printf("=%d",sum);
		 */
		//[2]
		if (min%2 != 0) min++;
		
		for (int i = min; i <= max; i+=2) {
			System.out.printf("%d+",i);
			sum+=i;			
		}
		System.out.printf("=%d",sum);
	}

}
