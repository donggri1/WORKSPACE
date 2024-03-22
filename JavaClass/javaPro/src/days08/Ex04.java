package days08;

/**
 * @author LEE
 * @date 2024. 1. 10. - 오전 11:46:38
 * @subject 재귀함수 ( recursive function ) 
 * @content 순환,되풀이되는,재귀하는
 * 
 * 			함수 안에서 자기 자신을 다시 호출하는 함수
 */
public class Ex04 {

	public static void main(String[] args) {
		disp();	
			
	}

	private static void disp() {
		System.out.println("> disp() 호출됨...");
		disp(); // 함수호출
		
		
	}

}
