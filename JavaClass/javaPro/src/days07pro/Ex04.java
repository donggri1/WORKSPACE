package days07;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오전 11:36:09
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {
		// 정규표현식
		// 회원가입 -  주소, 우편번호 : 000-000  00000
		String [] zipCodes = {
				"123-456",
				"12345",
				"123-4a6",
				"123-4567",
				"123456"
		};
		
		String regex = "\\d{5}|\\d{3}-\\d{3}"; // \\d{3}(-\\d)?\\d{2}
		// 정규표현식      {n}   반복횟수 n 
		//                 {n,m} 반복횟수 n~m
		//                 {n,}  반복횟수 n 이상
		//                 \\s  공백
		//                 *     반복횟수 0~여러개     0 이상
		//                 +     반복횟수 1~여러개     1 이상
		//                 ?     반복횟수 0, 1
	    // boolean String.matches(regex)
		for (int i = 0; i < zipCodes.length; i++) {
			// System.out.println( zipCodes[i] ); 
			String zipCode = zipCodes[i];
			
			if (zipCode.matches(regex)) {
				System.out.printf("올바른 %s 우편번호\n", zipCode);
			} else {
				System.out.printf("잘못된 %s 우편번호\n", zipCode);
			}
		} // for i

	} // main

} // class
