package days03;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 12:09:43
 * @subject
 * @content
 */
public class Ex01_03 {
	
	public static void main(String[] args) {
		
		//Ctrl + Shift + O 자동으로 import 구문 처리
		
		String name;
		byte kor, eng, mat;
		short tot;
		double avg;  
		
		Scanner scanner = new Scanner(System.in);
		
		//Scanner 구분자를 콤마(,)사용하고 싶다. (검색해보기)
		// 이름이라는 문자를 가져올때는 nextXXX() 메서드를 사용해 가져옴
		System.out.print(">이름_국어_영어_수학 입력? ");//_는 공백을 뜻함
		name = scanner.next(); //scanner.nextLine();
		kor = scanner.nextByte();
		eng = scanner.nextByte();
		mat = scanner.nextByte();
		
		// 총점, 평균 계산 코딩 추가.
		// Type mismatch: cannot convert from int to short
		// 강제형변환 1번째 경우 
		tot = (short) (kor + eng + mat);  //  int 보다 작은 자료형은 연산할때 CPU가 int 자료형으로 처리해서 연산
		avg = (double)tot / 3; // .00 //2번째 강제형변환 일반 숫자(123은 int)
		
		//
		System.out.printf(
				"%s님은 국:%d 영:%d 수:%d 총점:%d 평균:%.2f 이다."
				, name, kor, eng, mat, tot, avg);


}
}