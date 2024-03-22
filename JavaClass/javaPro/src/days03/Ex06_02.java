package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 3:50:17
 * @subject
 * @content
 */
public class Ex06_02 {

	public static void main(String[] args) {
		// 증감 연산자 ++ / --
		// 복합대입 연산자 += -=	
		
		int x = 10;
		/*
		// x++; 후위형 증감연산자
		++x;	//전위형 증감연산자
		System.out.printf("> x=%d \n",x);
		*/
		int y = x++; //후위형
		//int y = ++x; //전위형
		
		System.out.printf("x=%d,y=%d\n",x,y);
		
		int n =100;
		System.out.println( ++n == 100); // false
		//System.out.println( n++ == 100); // true
		
		System.out.println(n);
		
		
	} // main

}
