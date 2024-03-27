package days17;

import java.util.ArrayList;

/**
 * @author LEE
 * @date 2024. 1. 23. - 오전 11:37:12
 * @subject
 * @content
 */
public class Ex06 {

	public static void main(String[] args) {
		//[시험 : 인터페이스(interface)]
		/*
		 * 
		 * 1. 자바의 자료형
		 * 	1) 기본형
		 * 	2) 참조형 - 배열, 클래스, [인터페이스]
		 * 		예) 인터페이스명 변수명;
		 * 2. 일종의 추상클래스이다.
		 * 	  추상클래스 ? 
		 * 	  필드 선언 X
		 * 	  일반 메서드 선언 X
		 * 	  상수만 선언 O
		 *    추상메서드만 선언 O
		 * 			+	
		 * 		JDK 1.8 부터 	1) static 메서드 O
		 * 						2) default 메서드 O
		 * 3. 인터페이스끼리 상속이 가능하다.
		 * 	 	(extends 키워드를 상속한다.)
		 * 4. 인터페이스를 사용하면 다중 상속이 가능하다.
		 * 5. 인터페이스를 구현할 때는 implements 키워드를 사용해서 클래스를 선언한다.
		 * 6.인터페이스 안의 필드는 상수만 선언가능
		 * double PI = 3.14;
		 * public final static double PI = 3.14;
		 * 
		 * 		인터페이스 안의 메서드는 모두 추상메서드...
		 * 		void test();
		 * 		public abstract void test();
		 */
			
			
		}//main
	
	
}//class

//자바 인터페이스명 : ~~~able
interface Movable{
	// 상수
	// 추상메서드
	void move(int x, int y ); //public abstract 생략돼있음
	// static 메서드
	// default메서드
}

abstract class  Unit{ //abst를 붙힌이유 :바로 객체를 생성하지말라는 추상클래스
	int currentHP; //현재 유닛의 체력
	int x ; //현재 유닛의 위치(x좌표)
	int y ; //현재 유닛의 위치(y좌표)
	
}

interface Attakable{
	void attack(Unit unit);
}

// 인터페이스 끼리 다중 상속( extends ) 
interface Fightable extends Movable,Attakable{
	//추상메서드
}

// 하늘 유닛
class AirUnit extends Unit{
	
}
//땅유닛
class GroundUnit extends Unit{
	
}
class DropShip extends AirUnit
implements Fightable,Repairable{

	
	@Override
	public void move(int x, int y) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attack(Unit unit) {
		// TODO Auto-generated method stub
		
	}
	
}

// 군인
// 클래스 선언할 때 인터페이스를 구현한다 : implements 키워드사용
class Fighter implements Fightable{

	@Override
	public void attack(Unit unit) {
		//총칼
		
	}

	@Override
	public void move(int x, int y) {
		//걷기..
		
	}
	
}

class Tank extends GroundUnit implements Fightable,Repairable{

	@Override
	public void move(int x, int y) {
		// 탱크 이동....
	}

	@Override
	public void attack(Unit unit) {
		// 포 쏘는 공격
		
	}
	
}

// 수리가 가능한 유닛
// 멤버 X
interface Repairable{}

// SCV
// 수리 가능	: Tank, SCV
// 수리 불가능 	: Fighter

class SCV extends GroundUnit implements Repairable{
	
	SCV(){}
	//수리하는 기능의 메서드
	//void repair(Unit unit) {
	void repair(Repairable unit) {
		if(unit instanceof Tank) {
			//탱크 수리코딩
		}else if (unit instanceof DropShip) {
			//수송선 수리코딩
		}else if(unit instanceof SCV) {
			//SCV 수리 코딩.
		}
	}
	
}
//		해상
class marine extends Unit implements Fightable{

	@Override
	public void move(int x, int y) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attack(Unit unit) {
		// TODO Auto-generated method stub
		
	}
	
}













