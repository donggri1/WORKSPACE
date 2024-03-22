package days09;

/**
 * @author kenik
 * @date 2024. 1. 11. - 오전 11:19:51
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
		// 머니(money)를 입력받아서 각 화폐단위의 갯수를
		// 출력하는 코딩을 하세요.
		
		// 화폐단위 : 50000  10000 5000  1000 500 100 50 10 5   1
		//                 /5     /2    /5   /2  /5  /2  /5 /2  /5
		int money = 125760;
		int unit = 50000;  
		boolean sw = false; // 스위칭변수
		int count = 0; // 화폐 갯수
		
		while ( unit >= 1 ) {
			count = money / unit;
			System.out.printf("%d원 : %d개\n", unit, count);
			money %= unit;	  
			unit /= ( sw ? 2 : 5 );
			// unit = unit / ( sw ? 2 : 5 ); 
			/*
			if (sw) {
				unit = unit /   2  ;
			} else {
				unit = unit /   5  ;
			}
			*/
			
			sw = !sw;
			
		} // while
		
		
		

	} // main

} // class











