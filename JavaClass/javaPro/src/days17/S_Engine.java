package days17;

public class S_Engine implements Engine {
	int speed;
	@Override
	public void moreFuel(int fuel) {
		this.speed += fuel *0.5;

	}

	@Override
	public void lessFuel(int fuel) {
		this.speed += fuel *0.5;

	}

	@Override
	public void stop() {
		

	}

}
