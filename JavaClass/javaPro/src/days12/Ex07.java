package days12;

import java.util.Arrays;

/**
 * @author LEE
 * @date 2024. 1. 16. - 오후 2:05:52
 * @subject
 * @content 검색 (Search)
 * 				ㄴ 순차검색 (Sequence Search)
 * 				ㄴ 이진검색 (BinarySearch)
 *					-필수조건 ( 정렬 ) 
 */
public class Ex07 {

	public static void main(String[] args) {
		int [] m = { 0, 4, 5, 15, 20, 21, 22, 24, 25, 28, 29, 30, 32, 33, 40, 43, 46, 47, 48, 58, 62, 63, 71, 76, 
                86, 91, 94, 99, 111, 116, 128, 135, 137, 139, 142, 145, 146, 150, 151, 160, 161, 166, 168, 
             169, 172, 181, 184, 185, 191, 198 };
		//오름차순 정렬
//		System.out.println(m.length);//50개
		//Arrays.sort(m);
		//Arrays.toString(m)
		//int 찾은위치 =Arrays.binarySearch(m,150)
		
		int n = 116;
		int foundIndex = binarySearch(m,n);
		if (foundIndex == -1) {
			System.out.println("배열 속에 찾는 숫자는 없다.");
		} else {
			System.out.println(foundIndex);
		}

		
	}//main

	private static int binarySearch(int[] m, int n) {
		int bottom = 0;
		int top = m.length-1;
		int middle;
		int count=0;
		
		while (top>=bottom) {
			
			System.out.printf("%d횟수\n",++count);
			middle = (bottom+top)/2;
			if (m[middle]==n) {
				return middle;
			} else if((m[middle]==n)){
				top = middle -1;
			}else if (m[middle]<n) {
				bottom = middle +1;
			}return -1;

			
		}
		
		return 0;
	}

}//class
