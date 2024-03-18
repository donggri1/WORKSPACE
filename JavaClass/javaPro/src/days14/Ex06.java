package days14;

/**
 * @author LEE
 * @date 2024. 1. 18. - 오후 2:01:10
 * @subject
 * @content
 */
public class Ex06 {

	public static void main(String[] args) {
		// [ 객체(클래스) 배열 ]
		//
		
		// 클래스(Point)를 자료형으로 선언된 배열을 "클래스 배열"
		Point [] points =new Point[3];
		
		for (int i = 0; i < points.length; i++) {
		// 								NullPointerxception
			points[i] = new Point(); // 객체가 생성됐는지 꼭 확인을하자
			points[i].dispXY();
			//System.out.println(points[i]);
		}
		

			
	}

}
