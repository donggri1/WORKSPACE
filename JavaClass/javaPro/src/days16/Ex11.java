package days16;

/**
 * @author LEE
 * @date 2024. 1. 22. - 오후 4:29:45
 * @subject
 * @content
 */
public class Ex11 {
	public static void main(String[] args) {
		
		// [ 다형성 ]
		// - "여러 가지 형태를 가질 수 있는 능력"
		// - Up Casting
		// E e1 = new R();
		// E e2 = new S();
		// E e3 = new T();
		// 문제점 ) E getPay() X 없다보니 호출자체를 못했음
		
		/*
		Employee emp4 = new Temp("박정호","서울 목동","010-3213-1231",
				"2020.01.01",20,250000);
		
		//실제 참조된 객체 Temp의 getPay() 메서드가 호출된다.(기억)
		System.out.println( emp4.getPay());
		*/
		/*
		Regular emp1 = new Regular("주강민", "서울 양천구"
	             , "010-3123-2311", "2021.03.21", 4000000);
	      SalesMan emp2 = new SalesMan(
	            "임경재", "경기도 성남시"
	            , "010-9837-2342", "2021.03.12"
	            , 500000
	            , 20, 70000);
	      Temp emp3 =  new Temp("박정호", "서울 목동", "010-2319-3422"
	            , "2020.01.01", 20, 250000);
	      
	      // 급여 계산
	      emp1.getPay();
	      emp2.getPay();
	      emp3.getPay();
	         :
	          :
		*/
		
		Employee [] emps = {
				new Regular("이준희","서울 강남구","010-1234-1234","2024.01.22",40000),
				new SalesMan(
						"임경재","경기도 성남시"
						,"010-9837-2342","2021.03.12"
						,500000
						,20 ,70000),
				new Temp("박정호","서울 목동","010-3213-1231",
						"2020.01.01",20,250000)
		};
				
				
				
				
		
		
	}//main
}//class
