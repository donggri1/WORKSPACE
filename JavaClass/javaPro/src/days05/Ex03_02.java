package days05;

/**
 * @author LEE
 * @date 2024. 1. 5. - 오전 11:35:53
 * @subject
 * @content
 */
public class Ex03_02 {

	public static void main(String[] args) {
		
		
		
		
		//[2] 가위(1)바위(2)보(3)
		int com = (int)(Math.random() * 3)+1 ;
		/*
		String [] rps = new String [4];
		rps[0]="";
		rps[1]="가위";
		rps[2]="바위";
		rps[3]="보";
		*/
		
		String [] rps = {"","가위","바위","보"};
		System.out.printf("%d(%s)\n",com,rps[com]);
		
		/*		String comStr = null;

		comStr = com ==1? "가위": com==2?"바위": "보";
		*/
		/*
		switch (com) {
		case 1:
			comStr = "가위";
			break;
		case 2:
			comStr = "바위";
			break;
		case 3:
			comStr = "보";
			break;

		}	
		*/
//		System.out.printf("%d(%s)\n",com,comStr);
		
		
		
		
		
/* [1]
		//임의의 수를 발생시키는 방법
		// 0.0<= double < 1.0
		for (int i = 0; i < 10 ;i++) {
			System.out.println((int)(Math.random() * 3)+1);
		}
		
		// 1~ 3 임의의 정수 필요
//		0.0 <= double Math.random() * 3 < 3.0
*/
		
	}

}
