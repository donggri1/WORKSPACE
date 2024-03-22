package days05;

public class Ex01_02 {
	public static void main(String[] args) {

		//배열 선언 + 초기화(동시) ==> [배열초기화]		
		/*
		int [] kors =new int [3];
		

		//초기과(입력)
		kors[0]=90;
		kors[1]=38;
		kors[2]=88;
		*/
		
		//배열초기화 = 선언 + 생성 + 초기화
		//int [] kors = new int[] {90,38,88};
		int [] kors = {90,38,88}; // 암기
		
		//출력
		for (int i = 0; i < kors.length ; i++) {
			System.out.printf("kors{%d]=%d\n",i,kors[i]);
		}
		
	}
		
	}
