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
public class Ex03 {

	public static void main(String[] args) throws IOException {

		String name;
		byte kor, eng, mat;
		short tot; // 0~300
		double avg;  // 74.333333333333333333333333333333
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("> 이름,국어,영어,수학 입력?");
		String data = br.readLine(); // "홍길동,89,78,56"
		
		//콤마를 구분자로 data 문자열 잘라내기 =>"홍길동""89""78""56"
		//String String.format(String format, Object ... args)
		//boolean String.equals(비교할문자열)
		//String [] String.split( 구분자 )
		String regex = ",";
		String [] datas = data.split(regex);
		
		name =datas[0];
		kor = Byte.parseByte(datas[1].trim());
		eng = Byte.parseByte(datas[2].trim());
		mat = Byte.parseByte(datas[3].trim());
		
		
		
		/*System.out.print("1. 이름 입력 ? ");
		name = br.readLine();
		
		System.out.print("2. 국어 입력 ? ");
		kor = Byte.parseByte( br.readLine() );
		
		System.out.print("3. 영어 입력 ? ");
		eng = Byte.parseByte( br.readLine() );
		
		System.out.print("4. 수학 입력 ? ");
		mat = Byte.parseByte( br.readLine() );
		*/
		
		
		
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
