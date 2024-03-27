package days23;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/**
 * @author LEE
 * @date 2024. 1. 31. - 오전 10:49:47
 * @subject
 * @content		[ 로또 내림차순 으로 정렬 ] 하기
 */
public class Ex01 {

	public static void main(String[] args) {

		int n = 5;
		//Syntax error, insert "Dimensions" to complete ReferenceType
		LinkedHashSet<Integer> lotto = null;
		ArrayList<LinkedHashSet<Integer>> lottos = new ArrayList<>(n);
		
		
		// 입력 - 문제점 파악/해결
		int ln = 0;
		for (int i = 0; i < n; i++) {
			lotto = new LinkedHashSet<>(6);			
						
			while (lotto.size()<6) {
				ln = (int)(Math.random()*45+1);
				lotto.add(ln);			
			}//while
			lottos.add(lotto);
		
		
		}//for

				
		// 출력

		int cnt = 1;
		Iterator<LinkedHashSet<Integer>> ir = lottos.iterator();
		//Arrays.sort(null);
		//Collections.sort(null);
		ArrayList<Integer> list = null;
		
		while (ir.hasNext()) {
			lotto =  ir.next(); //LikedHashSet			
			list = new ArrayList<Integer>(lotto);
			Collections.sort(list);
			System.out.printf("%d게임 : ",cnt++);
			Iterator<Integer> ir2 = list.iterator();
			while (ir2.hasNext()) {
				ln = ir2.next();
				System.out.printf("[%02d]",ln);
			}//while
			System.out.println();
		}
		
		
		
		
	}//main

	
	
}//class









