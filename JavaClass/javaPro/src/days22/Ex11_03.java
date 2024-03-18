package days22;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import days11.Ex05_03;
import days14.Student;

/**
 * @author LEE
 * @date 2024. 1. 30. - 오후 3:38:39
 * @subject
 * @content
 */
public class Ex11_03 {

	   public static void main(String[] args) throws IOException {
	      // 1반 30명 *  3반
	      // X Student [][] students = new Student[3][30] days15.Ex01.java 참고
	      // --> 컬렉션 클래스 사용 수정
	      ArrayList class1List = new ArrayList();  // sistList.get(0 ban-1)
	      ArrayList class2List = new ArrayList();  // sistList.get(1)
	      ArrayList class3List = new ArrayList();  // sistList.get(2)
	      
	      ArrayList sistList = new ArrayList();
	      sistList.add(class1List); // ArrayList 요소
	      sistList.add(class2List);
	      sistList.add(class3List);
	      
	      //  입력
	      char con = 'y'; 
	      String name;
	      int kor, eng, mat, tot, rank, wrank;
	      double avg;
	      Scanner scanner = new Scanner(System.in);
	      int ban ;
	      
	      do {
	         //
	         System.out.printf("> 반 입력 ? ");
	         ban = scanner.nextInt();

	         // 입력할 반의 ArrayList
	         ArrayList classList = (ArrayList)sistList.get(ban-1);
	         
	         System.out.printf(
	         "> %d반의 [%d]번 학생의 이름,국어,영어,수학 입력 ? "
	               , ban,  classList.size() +1 );

	         // 이,국,영,수 입력
	         name = Ex05_03.getName();
	         kor = Ex05_03.getScore();
	         eng = Ex05_03.getScore();
	         mat = Ex05_03.getScore();
	         // 총,평,등,전등 계산
	         tot = kor + eng + mat;
	         avg = (double)tot / 3;
	         wrank = rank = 1;
	         
	         Student s = new Student(name, kor, eng, mat, tot, avg, rank, wrank);

	         classList.add(s);
	          
	         // 입력 계속 
	         System.out.print("> 입력 계속 ? ");
	         con = (char)System.in.read();
	         System.in.skip(System.in.available());
	      } while (Character.toUpperCase(con) == 'Y' );
	      
	      
	      
	      //  출력
	      dispStudentInfo(sistList);

	   } // main

	   private static void dispStudentInfo(ArrayList sistList) {
	      
	      // int totalStudents =  sistList.stream().mapToInt(ArrayList::size).sum();
	      // IntStream 객체 [ 3, 2, 1 ]
	            
	      // System.out.printf("\t\t학생 정보 출력( %d명 )\n", totalStudents );
	      
	      int totalStudents = 0;
	      
	      int ban = 1;
	      Iterator ir = sistList.iterator();
	      while (ir.hasNext()) {
	         ArrayList classList = (ArrayList) ir.next();
	         totalStudents += classList.size();
	         System.out.println("=".repeat(60));
	         System.out.printf("[%d반 학생 : %d명 ]\n"
	                 , ban++, classList.size());
	         // 
	         Iterator ir2 = classList.iterator();
	         while (ir2.hasNext()) {
	            // totalStudents++;
	            Student s = (Student) ir2.next();
	            s.dispInfo();
	         }
	         
	      } // 
	      
	      System.out.printf("\t\t학생 정보 출력( %d명 )\n", totalStudents );
	      
	   }

	} // class
