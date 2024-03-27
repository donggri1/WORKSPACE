package days10;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오전 8:47:48
 * @subject
 * @content
 */
public class Ex01_02_02 {

	public static void main(String[] args) {
		// 10 진수 정수 => 16진수 출력.
		int n = 125;     //  0x7D
		
		int remider, share;   
		
		// String strHex = "";
		StringBuilder sb = new StringBuilder();
		
		String hex = "0123456789ABCDEF";
		while ( n != 0 ) {   
			share = n / 16;
			remider = n % 16;
			// System.out.println(remider);
			sb.append(hex.charAt(remider));
			//sb.insert(0, hex)
			 
			n = share;
		} // while
		
		System.out.println( sb.reverse()  );  
		
		

	} // main

} // class








