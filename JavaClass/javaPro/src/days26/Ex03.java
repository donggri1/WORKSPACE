package days26;

import java.beans.Transient;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

/**
 * @author LEE
 * @date 2024. 2. 5. - 오후 3:11:35
 * @subject
 * @content
 */
public class Ex03 {
	
	public static void main(String[] args) {
		/*
		 * 1. 직렬화
		 * 	  객체를 스트림으로 만드는 것.
		 * 2. 역직렬화
		 * 	  스트림을 객체로 만드는 것.
		 * 
		 * 3. 객체를 직렬화해서 읽기/쓰기를 할 수 있는 바이트 스르팀
		 * 	  Object[InputStream]	바이트스트림
		 * 	  Object[OutputStream] 
		 * 
		 */
		
		UserInfo u1 = new UserInfo("권맑음","1234",25);
		UserInfo u2 = new UserInfo("김영진","4321",20);
		
		ArrayList<UserInfo> list = new ArrayList<UserInfo>();
		list.add(u1);
		list.add(u2);
		
		
		String name = ".\\src\\days26\\UserInfo.ser";
		try(FileOutputStream fos = new FileOutputStream(name);
			ObjectOutputStream oos = new ObjectOutputStream(fos)) {
			
			oos.writeObject(u1);
			oos.writeObject(u2);
			oos.writeObject(list);
			
			oos.flush();
			System.out.println(">u1,u2,list 객체를 직렬화 시켜서 oos 파일로 저장완료!!!");
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}//main
}//class


//직렬화가 가능한 클래스
class UserInfo implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4461614692108077735L;
	String name;
	transient String password; // 객체를 직렬화할 때 포함시키지 않겠다.
	int age;
	
	public UserInfo() {
		this("UnKnown","1111",0);
	}

	public UserInfo(String name	, String passString, int age) {
		this.name = name;
		this.password = password;
		this.age =age;
	}

	@Override
	public String toString() {
		
		return "UserInfo [name=" + name + ", password=" + password + ", age=" + age + "]";
	}

	
	
}//class

















