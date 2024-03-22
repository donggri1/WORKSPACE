package days19;

import java.io.FileReader;
import java.util.Arrays;

/**
 * @author LEE
 * @date 2024. 1. 25. - 오후 3:05:07
 * @subject
 * @content
 */
public class Ex09_04 {
	public static void main(String[] args) {
		// days18.Ex01.java 자바파일 안에 있는
		// 알파벳을 대문자,소문자,숫자 구분하지 않고
		// 배열에 저장 후 ### 막대 그래프 그리기.


		// A ~ Z 26문자
		//System.out.println('Z'-'A');
		//int [] counts = new int ['Z'-'A'+1];
		//int [] counts2 = new int ['z'-'a'];
		//int [] counts숫자 = new int [10];
		// 가변배열
		int [][] counts = new int [3][];
		counts[0] = new int [26]; // 대문자
		counts[1] = new int [26]; // 소문자
		counts[2] = new int [10]; //숫자
		// 0행 대문자 갯수 저장 00 'A' 01'B'
		// 1행 소문자 갯수 저장 10 'a' 11'b'
		
		String fileName = "\\src\\days18\\Ex01.java";
		String key = "user.dir";
		String userDir = System.getProperty(key);
		String path = String.format("%s\\%s", userDir,fileName);
		//E:\Class\Workspace\JavaClass\javaPro\\src\days18\Ex01.java
		//System.out.println( path);

		try (FileReader fr =new FileReader(path);	){

			int code ; 
			char one ;
	
	
			//read(): EndOfFile = EOF -1반환
			while ((code = fr.read())!=-1) {
				one = (char)code;
				//System.out.println(one);
			
				if ( Character.isUpperCase(one)){
					//System.out.println(one -'A');
					counts[0][one - 'A']++;
				}else if(Character.isLowerCase(one)) {
					counts[1][one - 'a']++;
				}else if (Character.isDigit(one)) {
					counts[2][one - '0']++;
				}
				

			}//while 
			System.out.println( Arrays.toString(counts[0]));
			System.out.println( Arrays.toString(counts[1]));
			System.out.println( Arrays.toString(counts[2]));
			
			for (int i = 0; i < counts.length; i++) {
				//System.out.println(i==0?"대문자출력":"소문자 출력");
				for (int j = 0; j < counts[i].length; j++) {
					
					System.out.printf("'%c':%s(%d)\n",
							i==0?'A'+j:i==1?'a'+j:'0'+j 
						,"#".repeat(counts[i][j]),counts[i][j]);
				}
			
			}
			
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}//try	
		
		
		
		



	}//main
}//class
