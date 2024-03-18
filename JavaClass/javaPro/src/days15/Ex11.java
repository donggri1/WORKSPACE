package days15;

/**
 * @author LEE
 * @date 2024. 1. 19. - 오후 5:03:32
 * @subject
 * @content
 */
public class Ex11 {

	public static void main(String[] args) {
		
		// 객체 복사(copy)
		// 객체 복제(clone)
		
		Point p1 = new Point(1,2);
		Point p2 = p1; // 객체 복사(copy)
		pointCopy(p1);

		//객체 복제
		/*
		Point p3 = new Point();
		p3.x = p1.x;
		p3.y = p1.y;
		*/
		
		// [생성자를 사용해서 객체 복제.]
		/*
		Point p3 = new Point(p1.x,p1.y);
		*/
		//The constructor Point(Point) is undefined
		Point p3 = new Point(p1);
		
		
		
		
	}// main					Point p = p1 객체 복사
	public static void pointCopy(Point p) {
		
	}
	
}//class
