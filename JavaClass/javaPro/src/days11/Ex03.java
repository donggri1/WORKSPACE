package days11;

import java.util.Arrays;

public class Ex03 {

	public static void main(String[] args) {
		int [] m = {3,5,2,4,1};
		int foundIndex = indexOf(m,4);
//		System.out.println(foundIndex);
		
		int [] temp = new int [m.length +5 ];
//		Arrays.copyOfRange(null, foundIndex, foundIndex)
//		System.arraycopy(m, 1, temp, 2, 3);
		
		System.arraycopy(m, 0, temp, 0, 5);
		System.out.println(Arrays.toString(temp));
		
		for (int i = m.length-1; i >= foundIndex; i--) {
			temp[i+1] = temp[i];
		}
		temp[foundIndex]=100;
		System.out.println(Arrays.toString(temp));
		//삭제
		for (int i = 4; i < m.length+1; i++) {
			temp[i-1] = temp[i];
		}
		temp[5]=0;
		System.out.println(Arrays.toString(temp));
	}

	private static int indexOf(int[] m, int n) {
		for (int i = 0; i < m.length; i++) {
			if (m[i]==n)return i;
		}
		return 0;
	}

}
