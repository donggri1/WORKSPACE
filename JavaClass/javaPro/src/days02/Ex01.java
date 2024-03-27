package days02;

public class Ex01 {
	//		public static void main(String []args){
	//		String name = "이동찬";
	//		double length = 185.22;
	//
	//		System.out.println("이름 :\"" +name+ "\", 키 :"+ length + "cm");
	//	  }
	public static void main(String []args){
		//식별자(identifier) - 변수명,클래스명,메서드명 등등
		//		식별자를 부여하는방법(검색해서 알아보기)
		/*
		 * n 변수(variable)
		 * 'n' 한문자
		 * "n" 문자열 'n' + '\/0'
		 */
		//변수 초기화라고한다 
		String name = "이동찬";
		double height = 185.22;

		System.out.printf("이름:\"%s\",키:%fcm",name, height);


	}
}
