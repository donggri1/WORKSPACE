package days25;

import java.io.File;
import java.io.FileReader;
import java.util.Date;

/**
 * @author LEE
 * @date 2024. 2. 2. - 오전 11:03:55
 * @subject
 * @content
 */
public class Ex04 {
	public static void main(String[] args) {
		String parent = ".\\src\\days25";
		String child = "Ex01.java";
		
		// [ 파일 정보 ]
		// File 클래스 - 파일, 폴더(디렉토리)을 다루는 여러 기능(메서드)들이 구현된 클래스
		//												생성,파일명변경,삭제,정보 등등
		// String path = dir + "\\" + fName;
		
		File openFile = new File(parent , child);
		//1734055733
		System.out.println(openFile.length()+"(bytes)");
		System.out.println(openFile.lastModified());
		
		long lm =openFile.lastModified();
		Date d= new Date(lm);
		System.out.println(d.toLocaleString());
		
		
		
		
		// File + 읽기 + 문자 스트림 == FileReader
		try (FileReader fr= new FileReader(openFile)){
			// char -> int
			int code;
			while((code = fr.read())!=-1) {
				System.out.printf("%c",(char)code);
			}//while
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}//main
}//class
