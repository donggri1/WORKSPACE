package days10;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오전 8:47:48
 * @subject
 * @content
 */
public class Ex01 {

	public static void main(String[] args) {
		int n = 10;
		
		int remider, share;   
		
		String strResult = "";
		
		while ( n != 0 ) {   
			share = n / 8;
			remider = n % 8;
			// System.out.println(remider);
			strResult += remider;
			n = share;
		} // while
		
		System.out.println( strResult ); // "12"
		// "1396"
		// i=0     3(strResult.length()-1)
		// i=1     2
		// i=2     1
		// i=3     0
		String reverseStrResult = ""; 
		for (int i = 0; i < strResult.length(); i++) {
			reverseStrResult += strResult.charAt(strResult.length()-1-i);
		}
 
		System.out.println( reverseStrResult);
		
		// Integer.toOctalString(n);
		
		
		
		

	} // main

} // class








