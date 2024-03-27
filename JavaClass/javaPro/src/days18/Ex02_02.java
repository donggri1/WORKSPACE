package days18;

/**
 * @author LEE
 * @date 2024. 1. 24. - 오전 10:51:23
 * @subject	Object.메서드
 * @content
 */
public class Ex02_02 {

	public static void main(String[] args) {
		
		// 현실에서는 주민번호가 동일하면 같은 사람이다.
		Person p1 = new Person("234", "김길동");
		Person p2 = new Person("111", "홍길동");
		
		//[ Thread notify]
		// Object.notify(),
		// Object.wait() x 3
		
		//The method clone() from the type Object is not visible
		//[5.Object.clone()]
		
		try {
			//Person p1Clone = (Person)p1.clone(); // 다운 캐스팅 할 필요가없다.
			Person p1Clone = p1.clone(); // 다운 캐스팅 할 필요가없다.
			System.out.println( p1Clone);
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
		
		
		// [ Object.toString() ]
		// "객체의 풀네임@hashcode()의 16진수값"
		/* [ 4]
		System.out.println( p1.toString()); //days18.Person@73a28541
		System.out.println( p2 ); // 
		
		System.out.println(Integer.toHexString(1940030785 ));
		*/
		/* [ Object.hashCode() ]
		System.out.println(p1.hashCode()); //1940030785 해시코드 : 객체 고유번호
		System.out.println(p2.hashCode()); //1869997857
		*/
		/* [ Object.getClass() ]
		// 제네릭<>
		//Class<? extends Person> cls = p1.getClass();
		Class cls = p1.getClass();
		String fullName = cls.getName();
		System.out.println( fullName ); // days18.Perso
		String packageName = cls.getPackageName();
		System.out.println( cls.getPackageName());
		String className = cls.getSimpleName();
		System.out.println( cls.getSimpleName());
		*/
		
	}// main

	

}//class

class Person implements Cloneable{
	String rrn;
	String name;
	
	public Person(String rrn, String name) {
		super();
		this.rrn = rrn;
		this.name = name;
		
		
	}
	// 정보를 출력하는 메서드 dispPerson() X
	// 왜? toString() 메서드를 오버라이딩해서 
	// 그 객체의 정보를출력하는 용도....
	
	
	@Override
	public String toString() {
		return String.format("> RRN :%s, Name:%s",rrn,name);
	}
	
	
	// Person pclone = p1.clone();
	// 얕은 복제***
	// 깊은 복제
	/*
	@Override
	//CloneNotSupportedException Cloneable 선언
	protected Object clone() throws CloneNotSupportedException {
		Person pclone = null;
		//Type mismatch: cannot convert from Object to Person
		pclone = (Person) super.clone();
		return pclone;
	}
	*/
	// JDK1.5 공변 반환타입 추가.
	// Object 클래스의 clone() 메서드를 오버라이딩했기 때문에
	// 리턴타입은 Object라야 되지만 재정의하는 자식클래스의
	// 타입으로 변경이 가능하도록 문법이 추가..
	@Override
	//CloneNotSupportedException Cloneable 선언
	protected Person clone() throws CloneNotSupportedException {
		Person pclone = null;
		//Type mismatch: cannot convert from Object to Person
		pclone = (Person) super.clone();
		return pclone;
	}
	
	
	//CloneNotSupportedException Cloneable 선언
	/*@Override
	protected Person clone() {
		Person pclone = null;
		//Type mismatch: cannot convert from Object to Person
		try {
				pclone = (Person) super.clone();
		} catch (CloneNotSupportedException e) {
			
		}
	
		return pclone;
	}
	*/
	
	
	
	
	
	
	
	
	
}

	










