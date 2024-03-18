package days04;

import java.util.Iterator;

public class Tra {
	public static void main(String[] args) {
		//지역변수는 반드시 초기화 해야 사용할 수 있다.
//		int kor;
//		System.out.println(kor);
		
		//배열은 초기화하지않아도 그자료형의 초기값으로 초기화 되어져 있다.
		//ex) int:0
		//double : 0.0
		//char : '\0'
		//boolean : false
		//String : null
		
		int [] kors =new int [3];
		
//		System.out.printf("kors{%d]\n",0,kors[0]);
//		System.out.printf("kors{%d]\n",0,kors[0]);
//		System.out.printf("kors{%d]\n",0,kors[0]);
		//초리과(입력)
		kors[0]=90;
		kors[1]=38;
		kors[2]=88;
		
		//출력
		for (int i = 0; i < kors.length ; i++) {
			System.out.printf("kors{%d]=%d\n",0,kors[0]);
		}
		
	}
		
	}

