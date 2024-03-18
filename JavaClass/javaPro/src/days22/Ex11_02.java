package days22;

import java.io.IOException;
import java.util.ArrayList;		
import java.util.Scanner;

import days11.Ex05_03;
import days14.Student;

/**
 * @author LEE
 * @date 2024. 1. 30. - 오후 3:38:39
 * @subject												수정해보기 
 * @content
 */
public class Ex11_02 {
	public static void main(String[] args) throws IOException {
		// 1반 30명 * 3반
		//Student [][]students = new Student[3][30]; days15.Ex01.java
		// --> 컬렉션 클래스 사용 수정
		
		ArrayList class1List = new ArrayList(); // sistList.get(0 ban-1) 
		ArrayList class2List = new ArrayList(); // sistList.get(1 ban-1)
		ArrayList class3List = new ArrayList(); // sistList.get(2 ban-1)
		
		ArrayList sistList = new ArrayList(); 
		sistList.add(class1List);
		sistList.add(class2List);
		sistList.add(class3List);
		
		//입력
		char con = 'y';
		
		String name;
		int kor, eng, mat, tot,rank, wrank;
		double avg;
		
		Scanner scanner = new Scanner(System.in);
		
		int ban;
		
		
		do {
			System.out.printf("> 반 입력 ? ");
			ban = scanner.nextInt();
			
			System.out.printf(
					"> %d반의 [%d]번 학생의 이름,국어,영어,수학 입력 ?",ban,1);
			name = Ex05_03.getName();
			kor = Ex05_03.getScore();
			eng= Ex05_03.getScore();
			mat = Ex05_03.getScore();
			//총평,등,전등 계산
			tot =kor + eng+ mat;
			avg = (double)tot /3;
			wrank =rank = 1;
			
			Student s = new Student(name, kor, eng, mat, tot, avg, rank, wrank);
			if(ban==1)
				class1List.add(s);
			
			if(ban==2)
				class2List.add(s);
			
			if(ban==3)
				class3List.add(s);
			
			
			System.out.println("> 입력 계속?");
			con = (char)System.in.read();
			System.in.skip(System.in.available());
			
			
			
			
			
			
		} while (Character.toUpperCase(con)=='Y');
		
		
		//출력
		
		dispStudentInfo(sistList);
		
		
	}//main

	private static void dispStudentInfo(ArrayList sistList) {
		
		for (int i = 0; i < sistList.size(); i++) {
			System.out.printf("[%d반 학생 : %d명 ]\n",i+1,counts[i]);
			 int n =(int) sistList.get(i);
			 
			for (int j = 0; j < n ; j++) {
				if (i==0) {
					
				}
				 
			}
		}
		
		
	}
}//class
