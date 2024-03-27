package days16;

//영업직 사원 최종(마지막)클래스
//final class - 자식 클래스를 가질 수 없는 최종 클래스
public final class SalesMan extends Regular {

	// R - E - O 상속
	// 필드 - name , addr , tel , hiredate, basepay
	// 생성자 X 
	// 메서드 - @dispEmpInfo(), @toString(), getPay()
	private int sales; //판매량
	private int comm; // 커미션
	
	//생성자
	public SalesMan() {
		super(); //부모(Regular) 클래스의 디폴트 생성자 호출
		System.out.println("> SalesMan 디폴트 생성자 호출됨");
	}

	public SalesMan(String name, String addr, String tel, String hiredate
			, int basePay, int sales, int comm) {
		super(name, addr, tel, hiredate, basePay);
		this.sales = sales;
		this.comm = comm;
		System.out.println("> SalesMan 7 디폴트 생성자 호출됨");
	}

	@Override
	public void dispEmpInfo() {
		System.out.printf("사원명:%s, 주소:%s, 연락처:%s, 입사일자 :%s\n,기본급:%d\n,판매량:%d, 커미션:%d\n",
				this.getName(),this.getAddr(),this.getTel(),this.getHiredate(),this.getBasePay()
				, this.sales,this.comm
				);
	}

	@Override
	public int getPay() {
		return super.getPay() + this.sales* this.comm;
	}
	
	
	
	
}//class

/*//The type child cannot subclass the final class SalesMan
class child extends SalesMan{	
}
*/