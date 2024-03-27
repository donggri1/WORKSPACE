package days18;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * @author LEE
 * @date 2024. 1. 24. - 오전 10:07:25
 * @subject 한 문자 x
 * @content 한 라인씩 처리
 *			버퍼 기능 O
 *		 [A][B][][][][\r][\n] [A][B][][][][\r][\n]
 *		readLine()
 *		BufferedReader 클래스 ( 보조스트림 ) 
 *
 *				라인번호 붙이기.
 *
 */
public class Ex01_02 {

	public static void main(String[] args) {
		
		FileReader fr = null;
		BufferedReader br = null;
		
		String fileName = "C:\\Setup.log";
		String line = null;
		int lineNumber = 0;
		
		try {
			fr = new FileReader(fileName);
			br = new BufferedReader(fr);
			/*
			while ((one = fr.read())!=-1) {
				System.out.printf("%c",(char)one);
			} 
			*/
			while ((line = br.readLine())!=null) {
				System.out.printf("%d:%s\n",++lineNumber,line);
			} 
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (fr != null) {
				try {
					fr.close();
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	 

	}

}
