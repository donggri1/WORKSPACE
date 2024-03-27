package days04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오전 11:45:26
 * @subject	이름,국,영,수 한번에 입력 받아서 처리하기
 * @content 총,평
 * 			BufferedReader 사용한 예제 ( 내일 복습 문제 )
 * 
 * 			배열 사용
 */
public class Ex03_02 {

	public static void main(String[] args) throws IOException {

		String name;
		byte kor, eng, mat;
		short tot; 
		double avg; 
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("> 이름,국어,영어,수학 입력?");
		String data = br.readLine(); // "홍길동,89,78,56"

		String regex = "\\s*,\\s*";
		String [] datas = data.split(regex);
		
		name =datas[0];
		kor = Byte.parseByte(datas[1]);
		eng = Byte.parseByte(datas[2]);
		mat = Byte.parseByte(datas[3]);
		//mat = Byte.parseByte(datas[3].trim()); 로도 사용가능,정규표현으로도 표현가능
		
		
	
		tot = (short) (kor + eng + mat);  
		avg = (double)tot / 3; 
		
		System.out.printf(
				"%s님은 국:%d 영:%d 수:%d 총점:%d 평균:%.2f 이다."
				, name, kor, eng, mat, tot, avg);
		

		
		
	}

}
