package days17;

import days16.Employee;
import days16.Regular;
import days16.SalesMan;
import days16.Temp;

/**
 * @author LEE
 * @date 2024. 1. 23. - 오전 10:18:33
 * @subject [매개변수 다형성] 
 * @content 
 */
public class Ex03 {

	public static void main(String[] args) {

		Regular emp1 = new Regular("주강민","서울 양천구",
					"010-3123-2311","2021.03.21",40000000);
		
		//dispGetPay(emp1);
		
		SalesMan emp2 =new SalesMan(
				"임경재","경기도 성남시"
				,"010-9837-2342","2021.03.12"
				,500000
				,20 ,70000);
		
		dispGetPay(emp2);

		Temp emp3 = new Temp("박정호","서울 목동","010-3213-1231",
				"2020.01.01",20,250000);
		
		//dispGetPay(emp3);
		
				
		System.out.println("테스트".replace('스','X'));
		System.out.println("테스트".replace("스","XY"));
		
		//					CharSequence<-	String 매개변수 다형성
		
		
	}//main

	//[오버로딩(overload)]
	//사원의 급여를 출력하는 메서드
	/*
	private static void dispGetPay(Regular emp) {
		System.out.printf("> 정규직 사원 급여 : %d원\n",emp.getPay());				
	}

	private static void dispGetPay(SalesMan emp) {
		System.out.printf("> 영업직 사원 급여 : %d원\n",emp.getPay());				
	}
	private static void dispGetPay(Temp emp) {
		System.out.printf("> 임시직 사원 급여 : %d원\n",emp.getPay());				
	}
	//사원의 급여를 출력하는 메서드
	*/
	// 							매개변수 다형성
	//							Regular/SalesMan/Temp 객체
	private static void dispGetPay(Employee emp) {
		// instanceof 연산자
		// (주의) 자식 클래스 먼저 체크한다. 
		String type = null;
		if (emp instanceof SalesMan) {
			type = "영업직";
			SalesMan SM =(SalesMan) emp;
		}else if(emp instanceof Regular) {
			type = "정규직";
			Regular rg = (Regular)emp;
		}else if(emp instanceof Temp) {
			type = "임시직";
			Temp tm = (Temp) emp;
		
		}
		
		
		System.out.printf("> %s 사원 급여 : %d원\n",type,emp.getPay());				
	}
	
}//class

class TempTwo extends Temp{
	//
	
}













