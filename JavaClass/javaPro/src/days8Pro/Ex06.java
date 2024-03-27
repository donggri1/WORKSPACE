package days08;

import java.util.Random;

/**
 * @author kenik
 * @date 2024. 1. 10. - 오후 3:50:55
 * @subject
 * @content
 */
public class Ex06 {

	public static void main(String[] args) {
		// 4:02 수업 시작~ 
		// 신용카드
		String card = "7655-8988-9234-5677";
		
		// String [] String.split(regex);
		String regex = "-";
		String [] cardArr = card.split(regex);
		/*
		for (String c : cardArr) {
			System.out.println(c);
		}
		*/
		/*
		for (int i = 0; i < cardArr.length; i++) {
			System.out.printf("cardArr[%d]=%s\n", i, cardArr[i]);
		}
		*/
		
		Random rnd = new Random();
		int index = rnd.nextInt(4); // 0 <=  int  < 4
		
		cardArr[index] = "****";
		
		/*
		String printCard = String.format("%s-%s-%s-%s"
				, cardArr[0], cardArr[1], cardArr[2], cardArr[3]);
		*/
		
		// String.join()
		String printCard = String.join("-", cardArr);
		
		System.out.println( printCard );
		
				
		
		// 카드결재 영수증
		/*
		7655-****-9234-5677
		7655-8988-9234-****
		****-8988-9234-5677
		7655-8988-****-5677
		*/
				
	} // main

} // class







