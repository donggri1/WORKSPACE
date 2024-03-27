package days14;

/**
 * @author kenik
 * @date 2024. 1. 18. - 오후 5:06:33
 * @subject
 * @content
 */
public class Ex11 {

	public static void main(String[] args) {
		/*
		 * [멤버(필드, 메서드, 생성자) 앞의 접근지정자 ]
		 * 1. public           - 패키지 내부, 외부 어디서나 참조가능.
		 * 2. package(default) - 패키지 내부에서만 참조 가능.
		 * 3. private          - 클래스 내에서만 참조 가능
		 * 4. protected        - package + [상속] 
		 *                                  패키지 외부라도 상속 관계가 
		 *                                  있다면 참조 가능
		 *                                  
		 * 범위 :       public > protected > package > private
		 * 
		 * (참고) 지역변수는 접근지정자를 사용할 수 없다.
		 * 
		 *                   Time  클래스 선언
		 * */
		
		// days14.Time  패키지 내부
		// days14.Ex11
		Time t = new Time();
//		t.hour;
//		t.minute;
//		t.second;
		
		// days13.Ex01
		// days14.Time
		

	} // main

} // class

/*
class Time{
	// field
	public int hour;
	int minute;
	protected int second;
	private int millisecond;
	
	// method
	public void privateTest() {
		millisecond = 1;
		hour = 1;
		minute = 1;
		second =1;
	}
}
*/



