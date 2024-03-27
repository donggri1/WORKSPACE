package days25;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;

/**
 * @author kenik
 * @date 2024. 2. 2. - 오후 3:06:13
 * @subject  기본형 8가지를 읽기/쓰기 가능한 바이트 스트림
 * @content  Data[InputStream]/Data[OutputStream]
 *           보조스트림
 */
public class Ex10 {

	public static void main(String[] args) {
		String name = "김길동";
		int kor=92, eng=90 , mat=80 ;	
		int tot = kor + eng + mat ;
		double avg = (double)tot/3;
		boolean gender = false;
		
		// 한 학생 정보를 student.txt 파일 저장...
		// 문자 스트림 + 파일  
		String fileName = ".\\src\\days25\\student.dat"; // data  .ini
		try ( 
			 FileOutputStream fos = new FileOutputStream(fileName);
			 DataOutputStream dos = new DataOutputStream(fos);	){
			
			dos.writeUTF(name);
			dos.writeInt(kor);
			dos.writeInt(eng);
			dos.writeInt(mat);
			dos.writeInt(tot);
			dos.writeDouble(avg);
			dos.writeBoolean(gender);
			
			dos.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("end");

	} // main

} // 
