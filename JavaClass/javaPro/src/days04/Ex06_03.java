package days04;

/**
 * @author LEE
 * @date 2024. 1. 4. - 오후 4:23:12
 * @subject 1~10까지의 합구하기
 * @content
 */
public class Ex06_03 {

	public static void main(String[] args) {
		
		int sum=0;
		int i = 1 ;
		for (  int k=1    ;    ; i++, k++   ) {
			if( i > 10) break;
			sum+=i;
			//System.out.printf("%d+",++i);
			System.out.printf("%d+",i++);
			 //i++;
		}
		//Unreachable code
		System.out.printf("=%d\n",sum);
		
	}//main
}//class
