package days04;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 4:43:22
 * @subject
 * @content
 */
public class Ex06_04 {

	public static void main(String[] args) {
		// [문제 제시] 1~10까지의 합 구해서 출력
		int sum=0;
		for (int i = 10 ; i >= 1 ; i--) {
			System.out.printf("%d+",i);
			sum+=i;
		}
		System.out.printf("=%d",sum);
	}

}
