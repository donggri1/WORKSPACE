package days16;

/**
 * @author LEE
 * @date 2024. 1. 22. - 오후 5:16:02
 * @subject
 * @content
 */
public class Ex12 {
	
	public static void main(String[] args) {
		
		// [ 클래스 간의 형 변환 ]
		/*
		//	반드시 상속 관계가 있어야 된다.
		//Regular emp = new Temp(); X
		
		// 자동으로 업캐스팅(up casting)
		Regular emp = new SalesMan();
		
		// 강제로 다운캐스팅
		// cast 연산자 사용
		SalesMan sm = (SalesMan)emp;
		*/
		
		//업캐스팅한 클래스만 다운캐스팅이 가능하다.
		Regular emp = new Regular();
		//ClassCastException
		SalesMan sm = (SalesMan)emp;
		sm.getName();
		
		
	}//main
}//class
