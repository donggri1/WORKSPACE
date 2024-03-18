package days12;

import java.io.IOException;
import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오전 11:20:17
 * @subject 3반 23명 학생들의 이름,국어,영,수,총,반등수,전교등수 처리 코딩.
 * @content
 */
public class Ex03_02 {

	public static void main(String[] args) throws IOException {
		
		final int STUDENT_COUNT =23;
		final int CLASS_COUNT = 3;
		String name;
		int kor,eng,mat,tot;
		double avg;
		int rank=1;
		int totRank=1;
		
		
		
//		String [] names = new String[CLASS_COUNT*STUDENT_COUNT];
		String [][] names = new String [CLASS_COUNT][STUDENT_COUNT];
		double [][] avgs= new double[CLASS_COUNT][STUDENT_COUNT];
		int[][] infos= new int [CLASS_COUNT][STUDENT_COUNT];
		
		int [] counts = new int[CLASS_COUNT];
		
		char con = 'y';
		Scanner scanner = new Scanner(System.in);
		
		
		do {
			int count;
			System.out.println(">이름 국 영수 입력");
			name = scanner.next();
			kor = scanner.nextInt();
			eng = scanner.nextInt();
			mat = scanner.nextInt();
						
			tot= kor+eng+mat;
			avg=(double)tot/3;
			rank=1;
			
//			names[count];
			
			
			
			
			
			System.out.println("계속하시겠습니까?");
			con =(char)System.in.read();
			System.in.skip(System.in.available());
			
			
			
		} while (Character.toUpperCase(con)=='Y');
		
		
		

	}//main

}//class
