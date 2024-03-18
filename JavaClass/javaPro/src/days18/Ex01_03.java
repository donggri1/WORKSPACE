package days18;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * @author LEE
 * @date 2024. 1. 24. - 오전 10:07:25
 * @subject try ~ resources 문
 * @content 
 *
 */
public class Ex01_03 {

	public static void main(String[] args) {
		
	
	
		
		String fileName = "C:\\Setup.log";
		String line = null;
		int lineNumber = 0;
		
		try(FileReader fr =new FileReader(fileName);
			BufferedReader br = new BufferedReader(fr);) {
			//try ~resources 문 
			
			while ((line = br.readLine())!=null) {
				System.out.printf("%d:%s\n",++lineNumber,line);
			} 
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			// try ~ resources 문에 의해서
			// 자동으로 close()시킨다.
		}
	 

	}

}
