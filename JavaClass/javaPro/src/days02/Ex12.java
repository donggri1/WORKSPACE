package days02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author LEE
 * @date 2024. 1. 2. - 오후 5:13:29
 * @subject 이름, 국어, 영어 , 수학 입력
 * @content 총점, 평균 계산
 * 	[출력형식]
 *  홍길동님은 국:89 영: 78 수:56 총점:000 평균:00.00 이다.
 */
public class Ex12 {

	public static void main(String[] args) throws IOException {
	
		
		
		String name= "이동찬";
		byte kor,eng,mat;
		short tot;
		double avg;
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("1. 이름 입력");
		name=br.readLine();
		
		System.out.print("2.국어 입력?");
		kor= Byte.parseByte(br.readLine() );
		
		System.out.print("3. 영어 입력");
		eng= Byte.parseByte(br.readLine());
		
		System.out.print("4. 수학 입력");
		mat= Byte.parseByte(br.readLine());
		
		tot = (short) (kor + eng + mat);
		avg = tot/3;
		
		System.out.printf("%s님은 국:%d 영: %d 수:%d 총점:%d 평균:%.2f 이다.",name,kor,eng,mat,tot,avg);
		
		
	
	}//main

}//class
