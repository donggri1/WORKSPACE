package days26;

import java.io.File;
import java.io.IOException;

/**
 * @author LEE
 * @date 2024. 2. 5. - 오전 11:51:00
 * @subject
 * @content
 */
public class Ex02 {
	public static void main(String[] args) throws IOException {
		// [File 클래스]
		// - 파일 + 디렉토리
		
		String pathname = ".\\src\\days26\\Ex01.java";
		//String pathname = ".\\src\\days26";
		
		File f = new File(pathname);
		
		System.out.println( f.getParent()); // 부모 ".\src\days26" 문자열
		
		//File f = new File(".\\src\\days26\\Ex01.java");
		System.out.println( f.getParentFile()); // 부모 .\src\days26 파일객체
		
		System.out.println( f.getPath()); // 경로 .\src\days26\Ex01.java
		System.out.println( f.getAbsolutePath()); // 절대경로 C:\E\Class\Workspace\JavaClass\javaPro\.\src\days26\Ex01.java
		System.out.println( f.getCanonicalPath()); // 표준경로 C:\E\Class\Workspace\JavaClass\javaPro\src\days26\Ex01.java
		
		System.out.println( f.isFile());	 // 파일이니?	true
		System.out.println( f.isDirectory());// 폴더이니?	false
		System.out.println(f.length()); // 2722 byte
		System.out.println(f.exists()); // true
		
		 // OS에서 사용하는 경로 구분자		;
		System.out.println(f.pathSeparator); //
		
		// OS에서 사용하는 이름 구분자 		\
		System.out.println(f.separator); //
		
		// 전체 경로 속에서 파일명만 얻어오는 메서드 Ex01.java
		String fileName = f.getName();
		System.out.println( fileName);
		
		// Ex01.java
		// 확장자 (.java)를 제외한 파일명 "Ex01"
		// 확장자만 .. ".java"
		int pos = fileName.indexOf(".");
		System.out.println( fileName.substring(0, pos));//Ex01
		System.out.println( fileName.substring(pos));	//.java
		
		
	}//main
}//class











