package days16;

/**
 * @author LEE
 * @date 2024. 1. 22. - 오후 12:18:32
 * @subject
 * @content
 */
public class Ex06 {
	public static void main(String[] args) {
		// 단일 상속( Single Inheritance )
		// 다중 상속( Multiple Inheritance ) X
		// 자바는 다중 상속을 지원하지 않습니다. 왜?
		

	}//main
}//class

/*
class Tv{int power;}
class VCr{int power;}

// Tv + VCR
class TVCR extends Tv, VCR{
	int power; // Tv 물려받은
	int power; // Vcr 물려받은
}다중상속 불가

class TVCR extends Tv {
	//has-a 관계(포함)
	VCR vcr = new VCR();
}

인터페이스를 사용해서 다중 상속을 구현할 수 있다.
*/