package days15;

public class Person {

	//field 멤버변수
	private String name;
	private int age;
	private boolean gender;
	
	//constructor
	public Person() {}
	public Person(String name) {
		this.name = name; // 50개 필드 초기화
	}
	public Person(String name, int age) {
		this(name);// 가장 첫번째 와야함. 생성자안에서 또다른 생성자 호출
		//this();
		//this.name = name;
		//The assignment to variable age has no effect
		this.age = age;
	}
	
	// getter , setter
	public void setAge(int age) {
		if(age >= 0 && age <= 125) {
			this.age = age;
		}else {
			System.out.println("나이의 범위가 벗어났다.");
		}
	}
	
	public int getAge() {
		return this.age;
	}
	
	public void dispPerson() {
		System.out.printf("> 이름 :%s,나이%d\n",this.name,this.age);
		
	}
	
	
	
}
