package days10;

/**
 * @author kenik
 * @date 2024. 1. 12. - 오전 8:47:48
 * @subject
 * @content
 */
public class Ex01_02 {

	public static void main(String[] args) {
		// 10 진수 정수 => 16진수 출력.
		int n = 125;     //  0x7D
		
		int remider, share;   
		
		String strHex = "";
		
		// 0123456789ABCDEF
		while ( n != 0 ) {   
			share = n / 16;
			remider = n % 16;
			// System.out.println(remider);
			switch(remider) {
			case 10: remider = 'A';  break;
			case 11: remider = 'B';  break;
			case 12: remider = 'C';  break;
			case 13: remider = 'D';  break;
			case 14: remider = 'E';  break;
			case 15: remider = 'F';  break;
			default: remider = remider + '0'; break;
			}
			strHex += "["+(char)remider+"]";
			n = share;
		} // while
		
		System.out.println( strHex );  
		
		

	} // main

} // class








