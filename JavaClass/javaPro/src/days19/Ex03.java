package days19;

import java.io.UnsupportedEncodingException;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 12:09:46
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) throws UnsupportedEncodingException {
		
		
		String str = "가";
		byte [] bArr = str.getBytes("UTF-8");
		
		// [ea][b0][80]
		for (int i = 0; i < bArr.length; i++) {
			System.out.printf("[%02x]",bArr[i]);
		}
		System.out.println();
		
		//byte [] => String 변환
		String s=new String(bArr,"UTF-8");
		System.out.println(s);
		
		
		bArr = str.getBytes("EUC-KR");
		
		// [ea][b0][80]
		for (int i = 0; i < bArr.length; i++) {
			System.out.printf("[%02x]",bArr[i]);
		}
		System.out.println();
		
		//byte [] => String 변환
		s=new String(bArr,"UTF-8");
		System.out.println(s);
		
		

	}//main

}//class
