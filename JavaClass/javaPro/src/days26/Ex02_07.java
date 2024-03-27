package days26;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.swing.text.AbstractDocument.LeafElement;

/**
 * @author LEE
 * @date 2024. 2. 5. - 오후 2:37:51
 * @subject
 * @content
 */
public class Ex02_07 {
	public static void main(String[] args) {
		String parent = ".\\src\\days26";
		String child = "시간표_(5강의실)[혼합훈련](디지털컨버전스)AWS와 Elasticsearch 활용 자바 기반 Full-Stack 개발자 양성 과정(B).hwp";

		File f= new File(parent, child);
		System.out.printf("> 파일 크기 :",f.length()+"(bytes)");

		final int VOLUME = 35*1024; // 35kb
		//  하나의 파일을 내가 원하는 크기(35kb)로 분할..
		// 시간표 _1.hwp
		// 시간표 _2.hwp
		// 시간표 _10.hwp
		
		String baseName = getBaseName(child);
		String ext = getExtension(baseName);
		
		//System.out.println(baseName);
		//System.out.println(ext);

		int code= 0;
		
		FileOutputStream fos =null;
		BufferedOutputStream bos = null;
		int i = 0;
		int index = 0;
		
		try(FileInputStream fis = new FileInputStream(f);
			BufferedInputStream bis = new BufferedInputStream(fis)) {
			
			while ((code= bis.read())!=-1) {
				
				//System.out.println(code);
				if (i %VOLUME == 0) {
					if (i!=0) bos.close(); // 저장하자는뜻
					// 시간표_1.hwp;
					child = String.format("%s_%d%s", baseName,++index,ext);
					
					File temp = new File(parent, child);
					fos = new FileOutputStream(temp);
					bos = new BufferedOutputStream(fos);
				}//if
				bos.write(code);
				i++;
				
			}//while
			
			System.out.println("end");
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//main
	
	// 확장자를 제외한 순수 파일명
	private static String getBaseName(String path) {
		int pos = path.indexOf(".");
		String fileName = path.substring(0, pos);
		return fileName;

	}
	
	// 확장자를 반환하는 메서드
	private static String getExtension(String path) {
		int pos = path.indexOf(".");
		String ext = path.substring(pos);
		return ext;
	}

}//class
