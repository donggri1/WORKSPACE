package days07pro;

/**
 * @author kenik
 * @date 2024. 1. 9. - 오후 3:31:00
 * @subject
 * @content
 */
public class Ex08 {

	public static void main(String[] args) {
		// 계차 수열
		//  항의 갯수가 20개 까지의 합
		//  1+2+4+7+11+16+22+29+37+46+56+67+79+92+106+121+137+154+172+191+=1350
		// 0 1 2 3 4  5    계차(defference) 
	    int term = 1;
	    int sum = 0;
	    int defference = 0;
	    // 4:05수업시작~
	    for (int i = 1; i <= 20; i++) {
			term += defference;
			System.out.printf("%d+", term);
			defference++;
			sum += term;
		} // for i
	    System.out.printf("=%d\n", sum);
	    
	    /* [1]
	    // (n^2-n)/2+1
	    for (int i = 1; i <= 20 ; i++) {
			term = (int) ((Math.pow(i, 2)-i)/2+1);
			System.out.printf("%d+", term);
		}
		*/
		

	} // main

} // class









