package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 4:22:03
 * @subject 산술 연산자		>> <<
 * @content	ㄴ 쉬프트(shift) 연산자
 * 				물건을 이동시키다.
 * 						옮기다
 * 						바꾸다
 */
public class Ex06_03 {

	public static void main(String[] args) {
		//				0000 1010
		//이진수 첫값이 1일시 공백은1로채워지고
		//0일시 공백은 0으로채워짐
		//뒤의 공백은 무조건 0
		// >>>은 첫값에 상관없이 공백을 0으로 채움
		System.out.println( 10 );
		System.out.println( 10 >> 2 );
		System.out.println( 10 >>> 2 );
		System.out.println( 10 << 2 );
		
		

	}

}
