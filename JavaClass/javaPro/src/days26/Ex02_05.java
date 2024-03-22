package days26;

import java.io.File;

/**
 * @author LEE
 * @date 2024. 2. 5. - 오후 2:15:11
 * @subject
 * @content
 */
public class Ex02_05 {
	
	public static void main(String[] args) {
		
		String pathName = ".\\src\\days26";	
		//days26 폴더 안에 upload  폴더 생성
		File upload = new File(pathName, "upload");
		
		//System.out.println(upload.exists());
		if (!upload.exists()) {
			System.out.println( upload.mkdir()); //mk ==make			
			// mkdirs() : [days26]\다른 서브 디렉토리\test\puload
			
			//createTempFile("work",".tmp")
			// 		임시파일
			//C:\\windows\\TEMP			파일 생성
		}else {
			//폴더 존재시 삭제
			System.out.println( upload.delete());
			//deleteOnExit() : 응용 프로그램이 종료될 때
			//				   파일 삭제 ( 임시 파일 삭제 )
		}
		
	}//main
}//class



