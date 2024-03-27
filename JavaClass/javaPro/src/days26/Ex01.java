package days26;

import java.io.IOException;
import java.io.RandomAccessFile;

/**
 * @author LEE
 * @date 2024. 2. 5. - 오전 11:20:44
 * @subject	RandomAc
 * @content
 */
public class Ex01 {

	public static void main(String[] args) throws IOException {
		int [] score = {
				// 번호 국    영   수
				1, 100, 90, 90,    // 4*4
				2, 70 , 90,100,
				3, 100,100,100,
				4, 70 , 60, 80,
				5, 70 , 90,100
		};

		String name = ".\\src\\days26\\score.dat";
		String mode ="rw";

		try (RandomAccessFile raf = new RandomAccessFile(name,mode)){
			for (int i = 0; i < score.length; i++) {
				long fp = raf.getFilePointer();
				System.out.printf("> 현재 파일포인터 : %d - [%d]\n",fp,score[i]);
				raf.writeInt(i);

			}//for



		} catch (Exception e) {
			e.printStackTrace();
		}//cat
		// 일시정지 + 엔터 계속.
		System.out.println("> 엔터치면 진행한다.");
		System.in.read(); 
		System.in.skip( System.in.available() ); // 13,10 제거

		// 모든 학생 정보를 출력 .. ( score.dat )
		int no , kor , eng , mat = 0;
		int tot;
		double avg;

		try (RandomAccessFile raf = new RandomAccessFile(name,mode)){
			int 학생수 = score.length/4;
			for (int i = 0; i < 학생수; i++) {
				no = raf.readInt(); //1
				kor = raf.readInt(); //kor
				eng = raf.readInt(); //eng
				mat = raf.readInt(); //mat
				tot = kor +eng +mat ;
				avg = (double)tot/3;
				System.out.printf("번호:%d, 국어:%d, 영어:%d, 수학:%d, 총점:%d, 평균:%f\n",no,kor,eng,mat,tot,avg
						);

			}



		} catch (Exception e) {
			e.printStackTrace();
		}//cat
		// 일시정지 + 엔터 계속.
		System.out.println("> 엔터치면 진행한다.");
		System.in.read(); 
		System.in.skip( System.in.available() ); // 13,10 제거
		
		System.out.println("_".repeat(45));
		//문제
		//ㄱ. 3번 학생의 수학점수(100->20) 점으로 수정.
		//ㄴ. 3번 학생만 성적 정보를 출력
		//번호:3, 국어:9, 영어:10, 수학:11, 총점:30, 평균:10.000000
		
		try (RandomAccessFile raf = new RandomAccessFile(name, mode)){
			long pos = 4*4*2 + 4+4+4;//44
			raf.seek(pos);
			raf.writeInt(20);
			
			pos = 4*4*2;// 32
			raf.seek(pos);
				no = raf.readInt(); //1
				kor = raf.readInt(); //kor
				eng = raf.readInt(); //eng
				mat = raf.readInt(); //mat
				tot = kor +eng +mat ;
				avg = (double)tot/3;
				System.out.printf("번호:%d, 국어:%d, 영어:%d, 수학:%d, 총점:%d, 평균:%f\n",no,kor,eng,mat,tot,avg
						);

			
		} catch (Exception e) {
			e.printStackTrace();
		}




		//System.out.println("End");
	}//main

}//class















