package days14;

/**
 * @author kenik
 * @date 2024. 1. 18. - 오후 4:31:44
 * @subject
 * @content
 */
public class Ex10_03 {

	public static void main(String[] args) {
		
		Point p1 = new Point();
		p1.x = 10;
		p1.y = 20;
		
		Point p2 = new Point();
		p2.x = 1;
		p2.y = 2;
		
		// [p1] 좌표 + p2 좌표
		p1.plusPoint(p2);
		p1.dispXY();
		
		// p1 좌표 + [p2] 좌표
		p2.plusPoint(p1);
		p2.dispXY();
		
		

	} // main

} // class









