package days09;

import java.util.Arrays;

public class Ex06 {

	public static void main(String[] args) {
//		6. 정수를 입력받아서 2진수로 출력하는 코딩을 하세요. 
//	    10 => 00000000 00000000 00000000 00001010
		int [] binaryArr = new int [32];
		int n = 10;
		int index = binaryArr.length-1;
		int reminder;//나머지저장할 변수
		
		while ( n!= 0 ) {//n>0
			reminder = n%2;
			n/=2;//n=n/2
			binaryArr[index--]= reminder;
		}//while
		System.out.println(Arrays.toString(binaryArr));
		
		for (int i = 0; i < binaryArr.length; i++) {
			System.out.printf("%d",binaryArr[i]);
			if (i%9==8)System.out.print("");
			
		}
		
		
		
		
		/*[1]
		String binaryN= Integer.toBinaryString(n);
		System.out.println(binaryN);
		
		System.out.printf("%032d",1010);
		//String -> Int 변환
		System.out.printf("%032d", Integer.parseInt(binaryN));
		*/
	}

}
