package days03;

/**
 * @author LEE
 * @date 2024. 1. 3. - 오후 5:11:43
 * @subject
 * @content
 */
public class Ex09 {

	public static void main(String[] args) {
		//Type mismatch: cannot convert from double to float
		float pi = 3.141592f;
		// 소수점 4번째 자리에서 반올림을 한 실수값을 얻어오고싶다.
		// 3.142
		//[2] 풀이
		int i_pi = (int)(pi*1000+0.5); // 3142.092
		System.out.println((float)i_pi / 1000);

		
		//노력상
		/*System.out.printf("%f\n", pi);
		System.out.printf("%.3f\n",pi);
		//[1] 풀이
		String s_pi =String.format("%.3f", pi);
		Float pi4 = Float.parseFloat(s_pi);
		System.out.println(pi4);
		*/
		
		
	}//main
}//class
