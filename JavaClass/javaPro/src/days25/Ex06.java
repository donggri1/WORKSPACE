package days25;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;

/**
 * @author LEE
 * @date 2024. 2. 2. - 오후 12:33:31
 * @subject
 * @content
 */
public class Ex06 {
	public static void main(String[] args) {
		// 실행파일 복사 -> 바이트(이진) 스트림
		// FileInputStream / FileOutPutStram
		String sourceFile = "C:\\Users\\user\\Documents\\카카오톡 받은 파일\\1.08 과제_이동찬.txt";
		String copyFile = "C:\\Users\\user\\Documents\\1.08 과제_이동찬_copy.txt";

		//>복사 처리 시간 : 227764000(ns)
		fileCopyBinaryStream(sourceFile,copyFile);

	}//main

	private static void fileCopyBinaryStream(String sourceFile, String copyFile) {
		long start = System.nanoTime();

		try (FileInputStream fis = new FileInputStream(sourceFile);
				FileOutputStream fos= new FileOutputStream(copyFile)){
			// char -> int
			int code;
			while((code = fis.read())!=-1) {
				System.out.printf("%08d\n",Integer.parseInt( Integer.toBinaryString(code)));
				//fw.append(code); // char, charSequence;
				fos.write(code); //
				//fw.flush();
			}//while
			fos.flush();
			System.out.println("파일 복사 완료 !!");


			long end = System.nanoTime();
			System.out.printf(">복사 처리 시간 : %d(ns)\n", (end-start));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}//class
