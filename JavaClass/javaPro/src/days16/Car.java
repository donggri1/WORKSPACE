package days16;

public class Car {

	//필드
	String name;
	int gearType;
	int door;
	// 결합력이 높은 코딩 =>> 좋은 코딩이 아님
	//엔진			객체
	
//	private Engine engine = new Engine(); // has - a 관계
	private Engine engine = null;
	
	//
	public Engine getEngine() {
		return engine;
	}

	public void setEngine(Engine engine) {
		this.engine = engine;
	}

	//생성자
	public  Car() {
		engine = new Engine(); //결합력이 높은코딩
	}

	//메서드
	
	void speedUp(int fuel) {
		// NullPointerException 예외(에러) 발생.
		//this.engine = new Engine();
		this.engine.moreFuel(fuel);
	}
	void speedDown(int fuel) {
		//this.engine = new Engine(); 중복 ! 필드에서 생성
		this.engine.lessFuel(fuel);
	}
	void stop() {
		this.engine.stop();
	}
	
}
