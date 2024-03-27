package days11;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 15. - 오전 11:42:23
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
		// 한 반에 최대 23명 학생의
		// 성적 처리를 배열을 사용해서 해 보자.
		// 성적 처리( 국,영,수,총,평,등수)
		// 1. 입력 - 이름, 국, 영, 수
		// 2. 처리 - 총점, 평균, 등수
		// 3. 파일 입출력, DB 입출력 X
		String name;
		int kor, eng, mat,tot;
		double avg;
		int rank;
		
		final int STUDENT_COUNT = 23;
		
		String [] names = new String[STUDENT_COUNT];
		int [] kors = new int[STUDENT_COUNT];
		int [] engs= new int[STUDENT_COUNT];
		int [] mats = new int[STUDENT_COUNT];
		int [] tots = new int[STUDENT_COUNT];
		double [] avgs = new double[STUDENT_COUNT];
		int [] ranks = new int [STUDENT_COUNT];
		
		Scanner scanner = new Scanner(System.in);
		int count = 0; //실제 입력받은 학생수
		char con = 'y';
		
		System.out.println(">이름, 국어, 영어, 수학 입력?");
			name= scanner.next();
			kor = scanner.nextInt();
			eng = scanner.nextInt();
			mat = scanner.nextInt();
		tot = kor + eng + mat;
		avg = (double)tot / 3;
		rank = 1;
		
		//첫번째 학생의 성적정보 => 각배열의 0번째
		names[0] = name;
		kors[0]=kor;
		engs[0]=eng;
		mats[0] =mat;
		tots[0]=tot;
		avgs[0] = avg;
		ranks[0] =rank;
		
		count++; // 1명
		
		//입력 계속 ? y
		
	}//main

}//class
