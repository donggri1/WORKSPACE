package days05;

/**
 * @author LEE
 * @date 2024. 1. 5. - 오후 4:26:04
 * @subject	if,switch,for,while,do~while
 * @content	break
 * 
 * 			[foreach문 == 확장 for문]
 * 
 */
public class Ex08 {

	public static void main(String[] args) {

		int[] m = new int[10];
		for (int i = 0; i < m.length; i++) {
			m[i]= (int) (Math.random()* 101);
			System.out.printf("[%d]",m[i]);
		}
		
//		for (자료형 변수명 : 배열 또는 컬렉션) 
		int sum = 0;
		for (int n : m) {
			System.out.println( n );
			sum+=n;
		}System.out.println(sum);
		//m 배열의 각 요소에 0~100사이의
		// 임의의 정수를 채워넣자.
		// 0.0<= (int) (Math.random()* 101)< 101.0

			


	}

}
