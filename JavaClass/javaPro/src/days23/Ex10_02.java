package days23;

import java.io.FileReader;
import java.util.Properties;

/**
 * @author LEE
 * @date 2024. 1. 31. - 오후 4:43:41
 * @subject
 * @content
 */
public class Ex10_02 {
	public static void main(String[] args) {
		
		String className = "o";            
		String url = "";                  
		String user = "";                                                       
		String password = "";
		
		String path = ".\\src\\das\23\\jdbc.properties";
		
		Properties p = new Properties();
		try( FileReader fr = new FileReader(path)){
			p.load(fr);
			className = p.getProperty(path);
			url = p.getProperty("url");
			user = p.getProperty("user");
			password = p.getProperty(className);
			System.out.println(className);
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
			
		
		
	}//main
}//class
