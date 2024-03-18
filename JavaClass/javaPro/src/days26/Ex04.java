package days26;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class Ex04 {

	public static void main(String[] args) {
		// [직렬화]		객체->스트림
		// [역직렬화]		스트림->객체
		// 객체를직렬화 해서 읽기 쓰기를 할수있는 바이트스트림
		// ObjectInputStream, ObjectOutputStream
		// -클래스를 직렬화할 수있으려면
		//		Serializable 인터페이스를 구현만 하면된다.
		
		// *** 상속 관계 - 직렬화 ***
		// 1) 부모를 직렬화할 수 있는 iplements Serializable 구현한 클래스
		//		자식은 serializable 구현하지 않은 클래스 인경우 어떻게되는지
		// 	  (결과 : 자식은 S 구현하지 않아도 자동으로 부모따라서 직렬화가 가능한 클래스가 되더라.)
		// 2) 부모 : implements Serializable 구현안한 클래스
		// 	  자식 : implements Serializable 구현한 클래스	
		//	  (결과: 부모의 멤버는 직렬화 대상에서 제외되더라)
		//	  (		부모 멤버도 직렬화 대상이 되도록 처리  )
		
		Child c =new Child();
		c.name = "홍길동";
		c.age = 20;
			
		String pathname = ".\\src\\days26\\Child.ser";
		
		try(FileOutputStream out = new FileOutputStream(pathname);
			ObjectOutputStream oos = new ObjectOutputStream(out)) {
			
			oos.writeObject(c);
			oos.flush();
			
			System.out.println(
					"> c 객체를 직렬화 시켜서 oos 파일로 저장완료!!!");
			
		} catch (Exception e) {
			
		}
		

	}//main

}//class

class Parent {
	String name;
	
}
class Child extends Parent implements Serializable{
	int age;
	
	// 개발자가 직접 부모의 멤버도 직렬화 대상에 추가되도록 구현
	private void writeObject(ObjectOutputStream out) throws IOException {
		out.writeUTF(name);
		out.defaultWriteObject();
	}
	private void readObject(ObjectInputStream in) throws ClassNotFoundException, IOException {
		name = in.readUTF(); // 개발자 직접  추가
		in.defaultReadObject();  // age
	}
	
}


/*
 * [1]
class Parent implements Serializable{
	String name;
	
}
class Child extends Parent{
	int age;
*/






