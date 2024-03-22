package days08;

/**
 * @author LEE
 * @date 2024. 1. 10. - 오후 5:02:03
 * @subject
 * @content
 */
public class Ex06_04 {

	public static void main(String[] args) {
		String rrn = "830412-1700001";
		
		//String.substring(beginIndex,endIndex)
		String printRRN = rrn.substring(0,8)+"******";
		System.out.println(printRRN);
		
		//String.concat(); 문자연결
		System.out.println(rrn.substring(0,8).concat("******"));
		
	}

}
