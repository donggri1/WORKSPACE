package days10;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오전 8:47:48
 * @subject
 * @content
 */
public class Ex01_03 {

	public static void main(String[] args) {
		// 10 진수 정수 => 16진수 출력.
		int n = 125;     //  0x7D
		
		int remider, share;   
		
		String strHex = "";
		
		// 0123456789ABCDEF
    //            0    1    2    3    4     5 
	char[] ch = {'0','1','2','3','4','5','6','7','8','9','a', 'b', 'c', 'd', 'e', 'f'};	
		while ( n != 0 ) {   
			share = n / 16;
			remider = n % 16;
			// System.out.println(remider);
			strHex = ch[remider] + strHex;
			n = share;
		} // while
		
		System.out.println( strHex );  
		
		

	} // main

} // class








