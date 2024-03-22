package days26;

import java.io.File;

/**
 * @author LEE
 * @date 2024. 2. 5. - 오후 2:27:35
 * @subject
 * @content
 */
public class Ex02_06 {
	public static void main(String[] args) {
		//days26
		//	ㄴ	[temp] 폴더 삭제
		//		ㄴ a.txt
		//		ㄴ b.txt
		//		ㄴ subTemp
		//			ㄴ c.txt
		//			ㄴ d.txt
		
		 String pathname =".\\src\\days26\\temp";
		 File p = new File(pathname);
		 
		 if (p.exists()) {
			 // 안지워진 이유는 delete() 메서드는 하위 디렉토리가 없어야 삭제가능
			//System.out.println( p.delete());
			 directoryDelete(p);
		}//if
		 System.out.println("end");
		 
		
	}//main
	
	private static void directoryDelete( File f ) {
	      // f 삭제되지 않았을 경우 while 반복
	      while (  !f.delete() ) {  // true, false
	         
	          File[] list =   f.listFiles();
	          for (int i = 0; i < list.length; i++) {   
	             if (list[i].delete()) {
	               System.out.printf("%s  삭제 완료!!!\n", list[i] );
	            } else {
	               directoryDelete( list[i] );
	            } // if
	          } //
	         
	      } // while
	   }
	
	
}//
