package days08;

public class Ex07 {

	public static void main(String[] args) {
		//[정보 처리 기사 실기]
		int money = 125760;
		int count = 0;
		// 화폐단위 :
		
		5만원, 
		count = money/50000;
		System.out.printf("5만원 : %d개\n",count);
		money%=50000;
		1만원,
		count = money/10000;
		System.out.printf("1만원 : %d개\n",count);
		money%=10000;
		5천원, 
		count = money/5000;
		System.out.printf("5천원 : %d개\n",count);
		money%=5000;
		1천원, 
		count = money/1000;
		System.out.printf("1천원 : %d개\n",count);
		money%=1000;
		5백원, 
		count = money/500;
		System.out.printf("5백원 : %d개\n",count);
		money%=500;
		1백원, 
		count = money/100;
		System.out.printf("100원 : %d개\n",count);
		money%=100;
		5십원, 
		count = money/50;
		System.out.printf("50원 : %d개\n",count);
		money%=50;
		1십원, 
		count = money/10;
		System.out.printf("10원 : %d개\n",count);
		money%=10;
		5원, 
		count = money/5;
		System.out.printf("5원 : %d개\n",count);
		money%=5;
		1원
		count = money/1;
		System.out.printf("1원 : %d개\n",count);
		money%=1;
		
		

		

	}//main

}//class
