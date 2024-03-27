package days02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author kenik
 * @date 2024. 1. 2. - 오후 5:13:25
 * @subject  이름, 국어, 영어, 수학 입력
 * @content  총점, 평균 계산
 *    [출력형식]
 *    홍길동님은 국:89 영:78 수:56 총점:000 평균:00.00 이다.
 */
public class Ex12 {

	public static void main(String[] args) throws IOException {
		String name;
		byte kor, eng, mat;
		short tot; // 0~300
		double avg;  // 74.333333333333333333333333333333
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		// 
		System.out.print("1. 이름 입력 ? ");
		name = br.readLine();
		
		System.out.print("2. 국어 입력 ? ");
		kor = Byte.parseByte( br.readLine() );
		
		System.out.print("3. 영어 입력 ? ");
		eng = Byte.parseByte( br.readLine() );
		
		System.out.print("4. 수학 입력 ? ");
		mat = Byte.parseByte( br.readLine() );
		
		// 총점, 평균 계산 코딩 추가.
		// Type mismatch: cannot convert from int to short
		// [형변환] 설명 X
		tot = (short) (kor + eng + mat);  //  + 덧셈연산자
		avg = tot / 3; // .00
		
		//
		System.out.printf(
				"%s님은 국:%d 영:%d 수:%d 총점:%d 평균:%.2f 이다."
				, name, kor, eng, mat, tot, avg);

	} // main

} // class





