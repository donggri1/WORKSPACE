package days07;

import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오전 10:25:33
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		
		
		
		
		
//		int row,col;
//		Scanner scanner =new Scanner(System.in);
//		
//		System.out.print("행의 갯수입력");
//		System.out.printf("");
//		row = scanner.nextInt();
//		col = 2*row-1;
//		for (int i = 1; i <=row; i++) {
//			for (int j = 1; j <= col ; j++) {
//				System.out.print(i+j>=row+1 && j-i<=row-1?"*":"_");
//			}
//			System.out.println();
//		}
		
		
		
		
//		for (int i = 10; i <=3; i++) {
//			for (int j = 1; j <=5; j++) {
//				System.out.print(i+j>=4?"*":"_");
//				System.out.print(j-i<=2?"*":"_");
//				System.out.println(u+j>=4 && j=i<=2?"*");:"_"
//				
//			}
//			
//		}
//		
		
		
		
		//[7] 5행 5열
		/*
		for (int i = 1; i <=5; i++) {
			for (int j = 1; j <=5; j++) {
				//if(i==j)System.out.print("*");
				//else System.out.print("_");
				//System.out.print(i==j?"*":"_");
				//System.out.print(i+j==6?"*":"_");
				System.out.print(i==j||i+j==6?"*":"_");
				
			}
			System.out.println();
		}
		*/
		
		//****	i=1 j=2	1
		//_***	i=2	j=1	3
		//__**	i=3	j=0	5
		//___*	i=4	j=	1
//				i*2-1 = j
//		for (int i = 1; i <=4; i++) {
//			
//			for (int j = 1; j <= 3-i; j++) {
//				System.out.print("_");}
//			for (int j = 1; j <= i*2-1; j++) {
//				System.out.print("*");}
//			System.out.println();
//		}
		
		
		//****	i=1 u=0 	j=1,2,3,4
		//_***	i=2	u=1 	j=1,2,3
		//__**	i=3	u=1,2	j=1,2,
		//___*	i=4	u=1,2,3	j=1
		
//		for (int i = 1; i <=4; i++) {
//			
//			for (int j = 1; j <= i-1; j++) {
//				System.out.print("_");}
//			for (int j = 1; j <= 5-i; j++) {
//				System.out.print("*");}
//			System.out.println();
//		}
			
		
		
		
		
		
		//*		i=1	j=1
		//**	i=2	j=1,2
		//***	i=3	j=1,2,3
		//***	i=4	j=1,2,3,4
		
//		for (int k = 1; k <= 4; k++) {
//			for (int k2 = 1; k2 <=4; k2++) {
//				System.out.print(k+k2>=5?"*":"_");
//				
//			}
//			System.out.println();
//		}
//		 
		/*
		for (int i = 1; i <=4; i++) {
			
			for (int j = 1; j <= 4-i; j++) {
				System.out.print("_");
			for (int k = 0; k < i; j++) {
				System.out.print("*");
			
			
			}
			System.out.println();
		}
		*/
		//[3]
		//*		i=1	j=1
		//**	i=2	j=1,2
		//***	i=3	j=1,2,3
		//***	i=4	j=1,2,3,4
		//i+j = 5
		//j = 5-i
		/*
		for (int i = 0; i <4; i++) {
			
			for (int j = 0; j < 5-i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	
		for (int i =4 ; i >=1 ; i++) {			
			System.out.println("*".repeat(i));}
		
		*/
		//[2]
		//*		i=1	j=1
		//**	i=2	j=1,2
		//***	i=3	j=1,2,3
		//***	i=4	j=1,2,3,4
		/*
		for (int i = 0; i <4; i++) {
			
			for (int j = 0; j < i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	
		for (int i = 0; i < 4; i++) {			
			System.out.println("*".repeat(i));}
		*/
		
//		String.repeat(int count);
//		System.out.println("*".repeat(4));
		/*
		for (int i = 0; i < 4; i++) {			
			System.out.println("*".repeat(4));}
		*/
		
		
				
	}//main

}//class
