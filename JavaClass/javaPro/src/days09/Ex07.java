package days09;

public class Ex07 {

	public static void main(String[] args) {

		//[주민등록번호]
		//1. 생년월일
		//2. 성별
		//3. 내국인/외국인
		//4. 출신지역
		//5. 나이(퇴직일)
		//6. 검증
		String rrn = "940123-1000001";
		
		//주민등록번호 - > 생년월일 얻어오겠다
		//"1999년 1월 23일"
		String birthday = getBirth(rrn);
		System.out.println(birthday);
		String gender = getGender();
		
	}//main

		private static String getGender() {
			//char rrn.charAt(7);		'1' - 48 int
			//String rrn.substring(7,8);	"1"	integer
			//int
			
			
	}

		public static String getBirth(String rrn) {
			
			int year = Integer.parseInt(rrn.substring(0,2));
			int month = Integer.parseInt(rrn.substring(2,4));
			int day = Integer.parseInt(rrn.substring(4,6));
			int yearKey = Integer.parseInt(rrn.substring(7,8));
			int lyearKey=0;
			System.out.println(yearKey);
			switch (yearKey) {
			case 0: case 9:
				lyearKey = 18;
				break;
			case 1: case 2: case 5: case 6:
				lyearKey = 19;
				break;
			case 3: case 4 : case 8: case 7:
				lyearKey = 20;
				break;

			}
			System.out.println(lyearKey);
			String birthday = String.format("%d%02d년 %d월 %d일",lyearKey,year,month,day);
			
			
			return birthday;
		}//main
		
		//주민등록번호로부터 성별 얻어오는 기능
		//매개벼수 : 주민등록번호 
		//리턴값(리턴 자료형) : 남/여	1/2	G	(정수)
		
	
}//class
