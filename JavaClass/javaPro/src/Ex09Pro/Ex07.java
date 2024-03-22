package days09;

/**
 * @author kenik
 * @date 2024. 1. 11. - 오후 12:09:32
 * @subject
 * @content
 */
public class Ex07 {

	public static void main(String[] args) {
		
		// [주민등록번호]
		// 住民登錄番號 / Resident registration number, RRN
		// 1. 생년월일
		// 2. 성별
		// 3. 내국인/외국인
		// 4. 출신지역
		// 5. 나이(퇴직일)
		// 6. 검증
		
		String rrn = "990123-1700001";
		
		// 주민등록번호 -> 생년월일
		// "1999년 1월 23일"
		String birthday = getBirth(rrn);
		System.out.println( birthday );


	} // main
	
	// 기능 : 주민등록번호로 부터 성별얻오는 기능
	// 매개변수 : 주민등록번호
	// 리턴값(리턴자료형) : 남/'여'  1/2/ G (정수)
	private static int getGender(String rrn) {
		// char   rrn.charAt(7);       '1' - 48   int
		// String rrn.substring(7,8);  "1" Integer.paresInt()
		// int                          1
		return rrn.charAt(7) - 48;	// 1
	}

	private static String getBirth(String rrn) {
		// "990123-1700001"
		int year = Integer.parseInt(rrn.substring(0,2)); // "99"
		int month = Integer.parseInt(rrn.substring(2,4)); // "99"
		int day = Integer.parseInt(rrn.substring(4,6)); // "99"
		
		// year = 1999, 1899
		int gender =  getGender(rrn);
		
		//9,0  1800
		//1,2,5,6 1900
		//3,4,7,8 2000
		switch (gender) {
		case 9: case 0:	
			year += 1800;
			break; 
		case 1: case 2: case 5: case 6:
			year += 1900;
			break;
		case 3: case 4: case 7: case 8:
			year += 2000;
			break;
		} // switch
		
		String birthday = String.format("%d년 %d월 %d일"
				, year, month, day);
		
		return birthday;
	}
	
} // class
