package days02;

public class Ex02 {
	// String name; = 지역변수가아님
	public static void main(String[] args) {
		//지역변수(Local variable)는 반드시 초기화(initialize)해야 사용할 수 있다.
		//[W]The value of the local variable name is not used
		String name; // 지역변수가 맞음
		name= "홍길동";
		//[E]The local variable name may not have been initialized
		System.out.println(name);

		
	}

}
