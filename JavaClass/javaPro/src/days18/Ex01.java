package days18;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Ex01 {

	public static void main(String[] args) {
		
		FileReader reader = null; // 
		
		String fileName = "C:\\Setup.log";
		int one= -1;
		try {
			reader = new FileReader(fileName);
			while ((one = reader.read())!=-1) { // 한문자씩 읽어오는 코드
				System.out.printf("%c",(char)one);
			} 
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	 

	}

}
