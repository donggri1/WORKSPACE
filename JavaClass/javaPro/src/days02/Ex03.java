package days02;

public class Ex03 {

	public static void main(String[] args) {
		//긴문장 내려쓰기 Alt + Shift + Y
		//서치 방법 c+Sh+a+ L
		String name = "이동찬"; //%s
		int age = 31; // %d
		final double PI = 3.141592; // %f
		char grade = 'A'; //%c
		
		System.out.printf("이름:%s, 나이:%d, PI:%f, 등급:%c\n",name,age,PI,grade);
		
		/*Q
		 * [식별자 명명 규칙]
		 * 1.자바는 대소문자 구분한다.
		 * String name;
		 * sysout(Name);X
		 * 2.키워드(예약어)를 사용 X
		 * int char;X
		 * 3.$ _ 특수문자 사용 O
		 * int $age, _ age;
		 * 4.숫자로 시작할 수 없다.
		 * int 1kor;x
		 * int kor1;0
		 */
		
		int kor1;
//		int 1kor; X
		
		int $age,a$ge;
		int _Height,h_eight;
		
//		String first name;
//		String first_name;
//		string firstName;권장.
//		int #age; X
		
		
		
	}

}
