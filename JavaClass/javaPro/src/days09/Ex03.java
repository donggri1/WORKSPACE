package days09;

public class Ex03 {

	public static void main(String[] args) {
		String rrn = "830412-1700001";
//		   이렇게 출력되도록 코딩하세요 . 
//		   실행결과 : 830412-1******
		System.out.println(rrn.substring(0,8).concat("******"));

	}

}
