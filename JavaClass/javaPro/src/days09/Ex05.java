package days09;

public class Ex05 {

	public static void main(String[] args) {

//		5. 머니(money)를 입력받아서 각 화폐단위의 갯수를 출력하는 코딩을 하세요.
		
		int money = 125760;
		int unit = 50000;
		boolean sw = false;//스위칭 변수
		int count = 0;
		
		while (unit>=1) {
			count = money / unit;
			System.out.printf("%d원 : %d개 \n",unit,count);
			money %= unit;
			// unit  = unit / (sw ? 2 :5);
			unit /= (sw ? 2:5);
			sw= !sw; 
			
		}
		
		

	}//main

}//class
