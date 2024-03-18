package days12;

import java.io.IOException;
import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class Tr {
	public static void main(String[] args) throws IOException {
 		String name;
		int kor,eng,mat,tot;
		double avg;
		int rank=0;
		
		int count=0;
		final int STUDENT= 30;
		char con = 'y';
		String [] names = new String [STUDENT];
//		int [] kors = new int[STUDENT];
//		int [] engs = new int[STUDENT];
//		int [] mats = new int[STUDENT];
//		int [] tots = new int[STUDENT];
		int [][] infos = new int[STUDENT][5];
		
		double [] avgs = new double[STUDENT];
		
		Scanner scanner = new Scanner(System.in);
		
		do {
			System.out.println("이름 국어 영어 수학 입력");
			
			names[count]= scanner.next();
			infos[count][0]=scanner.nextInt();//kors
			infos[count][1]=scanner.nextInt();//
			infos[count][2]=scanner.nextInt();
			infos[count][3]=scanner.nextInt();//tot
			infos[count][4]=scanner.nextInt();
			
			avgs[count]= infos[count][3]/3;
			
			procRank(infos,count);
			
			
			System.out.println("계속하시겠습니까");
			con=(char)System.in.read();
			System.in.skip(System.in.available());
			
		} while (Character.toUpperCase(con)=='Y');
				
	}//main

	private static void procRank(int[][] infos, int count) {

		for (int i = 0; i < count; i++) {
			int rank=1;
			for (int j = 0; j < infos.length; j++) {
				if (infos[i][3]<infos[j][3]) infos[i][count++];
				
			}
			
		}
		
	}


}//class
