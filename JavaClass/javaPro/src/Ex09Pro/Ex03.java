package days09;

/**
 * @author kenik
 * @date 2024. 1. 11. - 오전 11:10:51
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		String rrn = "830412-1700001"; 
		//   실행결과 : 830412-1******
		
		System.out.println( rrn.substring(0, 8).concat("******"));

	}

}
