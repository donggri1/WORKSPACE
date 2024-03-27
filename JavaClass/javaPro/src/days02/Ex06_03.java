package days02;

/**
 * @author LEE
 * @date 2024. 1. 2. - 오후 2:26:31
 * @subject String -> 숫자(byte,short,int,long,float,double) 형 변환
 * @content 기본형 래퍼클래스.parseXXX(String"23")
 */
public class Ex06_03 {

	public static void main(String[] args) {

		
			//기본형 ->래퍼(Wrapper) 클래스
			//int -> Integer 래퍼클래스
		int maxValue = Integer.MAX_VALUE;
		int minValue = Integer.MIN_VALUE;
		System.out.println( maxValue);
		System.out.println(minValue);
		
		String n = "23";
		//1.string -> int 형 변환
		int m = Integer.parseInt(n);
		System.out.println(m+1);
		

		//2. Stirng -> byte 형 변환
		byte b = Byte.parseByte("23");
		
		//2. Stirng -> short 형 변환
		short s = Short.parseShort("23");
		
		//2. Stirng -> long 형 변환
		long l =Long.parseLong("23");
		//2. Stirng -> float 형 변환
		float f =Float.parseFloat("23");
		
		//2. Stirng -> double 형 변환
		double d = Double.parseDouble("23");

		////////////////////////////////////////
		
		//int,double 숫자형 ->String 형 변환
		System.out.println("홍길동"+7);// "홍길동7"
		
		System.out.println(""+7);// "7"
		
		System.out.println(""+3.14);// "3.14"
		
		
	}// main

}//class
