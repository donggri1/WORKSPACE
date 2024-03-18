package days25;

import java.io.FileOutputStream;
import java.io.FileWriter;
import java.util.Properties;

/**
 * @author LEE
 * @date 2024. 2. 2. - 오전 10:29:48
 * @subject
 * @content
 */
public class Ex03 {
	public static void main(String[] args) {
			
		// [ Properties 컬렉션 클래스 ]
		
//		  맵계열  - entry형태
//		- key value 모두 string ,hashtable
//		- 환경설정값 저장 읽기때 사용
//		- 저장할때 store 읽을떄 load
//		- 저장할때 set 읽을때 get
		
		String className = "oracle.jdbc.driver.OracleDriver";            
		String url = "jdbc:oracle:thin:@localhost:1521:xe";                  
		String user = "scott";                                                                   
		String password = "tiger"; 

		Properties dbConfig = new Properties();
		dbConfig.setProperty("className", className);
		dbConfig.setProperty("url", url);
		dbConfig.setProperty("user", user);
		dbConfig.setProperty("password", password);
		
		String path =".\\src\\days25\\jdbc.xml";
		
		try(FileOutputStream fos = new FileOutputStream(path)){
			// XML 파일 형식으로 환경설정 값들을 저장.
			
			//The method storeToXML(OutputStream, String) in the type Properties is not applicable for the arguments (FileWriter, String)
			//바이트 스트림 객체 달라
			dbConfig.storeToXML(fos, "db connection config..");
			System.out.println("SAVE END");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		



	}//main
}//class
