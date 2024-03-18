package days11;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Random;
import java.util.stream.IntStream;

public class Ex07 {

	public static void main(String[] args) {
		int [] m = { 3, 92, 3, 40, 71, 91, 61, 92, 76, 71, 59, 54, 64, 48, 66, 92, 25, 20, 73, 37 };

		//max 가장 큰 값을 찾아서 그 위치 (index)를 배열에 담아 출력

		int [] maxIndexArray;
		
//		1) max
		/*
		int max = m[0];
		for (int i = 0; i < m.length; i++) {
			if(max<m[i])max=m[i];
		}
		System.out.println(max);
		*/
		int max = IntStream.of(m).max().getAsInt();
		System.out.println(max);
//		2) max 갯수 -> maxIndexArray 배열의 크기
		/*
		int maxCount = 0;
		for (int i = 0; i < m.length; i++) {
			if (max == m[i])maxCount++;
		}
		*/
		
		int maxCount = (int) IntStream.of(m).filter(i->i==max).count();
		
		System.out.println(maxCount);
		
//		3) max의 index를 maxIndexArray 배열에 저장.
		maxIndexArray = new int[maxCount];
		for (int i = 0,idx = 0; i < m.length; i++) {
			if (max == m[i]) maxIndexArray[idx++]=i;
		}		
//		4) 배열 출력.
		System.out.println(Arrays.toString(maxIndexArray));
	}//main

}//class
