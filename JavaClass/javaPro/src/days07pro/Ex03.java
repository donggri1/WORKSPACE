package days07;

import java.util.Scanner;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오전 10:25:36
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		// 11:01 수업 시작~ 
		// [3번 문제 풀이]
		int row, col;
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("> 행의 갯수를 입력하세요 ? ");
	    row = scanner.nextInt();
	    col = 2 * row -1;
	    // 3/5, 4/7, 5/9 ...
		
		for (int i = 1; i <= row; i++) {   // 행갯수
			System.out.printf("%d : " , i);
			for (int j = 1; j <= col; j++) { 
				// System.out.print( i+j>=4?"*":"_"); 
				// System.out.print( j-i<=2?"*":"_");
				System.out.print( i+j>=row+1 && j-i<=row-1?"*":"_");
			} // for j
			System.out.println();
		} // for i
		
		
		// [7] 5행 5열 
		/*
		for (int i = 1; i <= 5; i++) {
			for (int j = 1; j <= 5; j++) {
				//if(i==j) System.out.print("*");
				//else System.out.print("_");
				// System.out.print(i==j?"*":"_");		
				// System.out.print(i+j==6?"*":"_");
				System.out.print(i==j || i+j==6?"*":"_");
				
			} // for j
			System.out.println();
		} // for i
		*/
		
		// [6]         공백   별
		// __*     i=1  j=2    1
		// _***    i=2  j=1    3
		// *****   i=3  j=0    5 
		//          i*2-1    = j
		/*
		for (int i = 1; i <= 3; i++) {     // 행 갯수
			// 공백 출력 for
			for (int j = 1; j <= 3-i; j++) { 
				System.out.print("_");
			} // for j
			// 별 출력 for
			for (int j = 1; j <= i*2-1; j++) { // 열(별) 갯수
				System.out.print("*");
			} // for j
			System.out.println();
		} // for i
		*/
		 
		
		// [5]         공백   별
		// ****   i=1  j=0    4
		// _***   i=2  j=1    3
		// __**   i=3  j=2    2
		// ___*   i=4  j=3	  1
		/*
		for (int i = 1; i <= 4; i++) {     // 행 갯수
			// 공백 출력 for
			for (int j = 1; j <= i-1; j++) { 
				System.out.print("_");
			} // for j
			// 별 출력 for
			for (int j = 1; j <= 5-i; j++) { // 열(별) 갯수
				System.out.print("*");
			} // for j
			System.out.println();
		} // for i
		*/
		
		// [4]
		// ___*   i=1  j=3
		// __**   i=2  j=2
		// _***   i=3  j=1
		// ****   i=4  j=0
		// i+j=4
		// j=4-i
		/*
		for (int i = 1; i <= 4; i++) {     
			for (int j = 1; j <= 4; j++) { 
				System.out.print(i+j>=5?"*":"_");
			} // for j 
			 
			System.out.println();
		} // for i
		*/
	    /*
		for (int i = 1; i <= 4; i++) {     // 행 갯수
			// 공백 출력 for
			for (int j = 1; j <= 4-i; j++) { 
				System.out.print("_");
			} // for j
			// 별 출력 for
			for (int j = 1; j <= i; j++) { // 열(별) 갯수
				System.out.print("*");
			} // for j
			System.out.println();
		} // for i
		*/ 
		
		
		// [3]
		// ****   i=1  j=1,2,3,4
		// ***    i=2  j=1,2,3
		// **     i=3  j=1,2
		// *      i=4  j=1
		// i + j = 5
		// j = 5-i
	    /*
		for (int i = 1; i <= 4; i++) {     // 행 갯수
			for (int j = 1; j <= 5-i; j++) { // 열(별) 갯수
				System.out.print("*");
			} // for j
			System.out.println();
		} // for i
		*/ 
		/*  [초기값 4 설정]
		for (int i = 4; i >= 1; i--) { // 행 갯수
			System.out.println( "*".repeat(i) );
		} // for i
		*/
		
		// [2]
		// *      i=1  j=1
		// **     i=2  j=1,2
		// ***    i=3  j=1,2,3
		// ****   i=4  j=1,2,3,4	
	    /*
		for (int i = 1; i <= 4; i++) {     // 행 갯수
			for (int j = 1; j <= i; j++) { // 열(별) 갯수
				System.out.print("*");
			} // for j
			System.out.println();
		} // for i
		*/ 
		/*
		for (int i = 1; i <= 4; i++) { // 행 갯수
			System.out.println( "*".repeat(i) );
		} // for i
		*/
		
		// [1]
		// ****   i=1  j=1,2,3,4
		// ****   i=2  j=1,2,3,4 
		// ****   i=3  j=1,2,3,4
		// ****   i=4  j=1,2,3,4
		/*
		for (int i = 1; i <= 4; i++) { // 행 갯수
			for (int j = 1; j <= 4; j++) { // 열(별) 갯수
				System.out.print("*");
			} // for j
			System.out.println();
		} // for i
		*/
		
		// String.repeat(int count);
		// System.out.println( "*".repeat(4) );
		/*
		for (int i = 1; i <= 4; i++) { // 행 갯수
			System.out.println( "*".repeat(4) );
		} // for i
		*/
		 
	} // main

} // class














