package days23;

import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

/**
 * @author LEE
 * @date 2024. 1. 31. - 오후 12:44:45
 * @subject
 * @content
 */
public class Ex06 {
	public static void main(String[] args) {
		// List,Set
		// [ Map 인터페이스를 구현한 컬렉션 클래스 ] 
		
		/* 1. 한쌍(key + value) == Entry(엔트리) 으로 관리
		 * 2. key   중복 허용 x
		 * 	  value 중복 허용 O
		 * 3. [Hash]Map	(신) - 사용권장
		 * 	  [Hash]table	(구)
		 * 4. 해싱(Hashing) ?
		 * 		-해시함수를 이용해서 데이터를 해시 테이블에
		 * 		 저장하고 검색하는 기법
		 * 		-해시함수? 데이터가 저장되는 곳을 알려주는 함수.
		 * 					데이터를 빠르게 검색할 수 있다.
		 * 		-데이터저장(key+value) 키를 해시 함수에 넣으면
		 * 		 배열의 한 요소를 얻어오고 
		 * 		 다시 그 곳에 연결된 링크드 리스트에 데이터를 저장.
		 * 		-해싱을 사용하기 때문에 많은 양의 데이터를 
		 * 		 검색하는 데 뛰어난 성능이 있다.
		 * 
		 * 			데이터가 저장되는 곳을 알려주는 함수.
		 * 			[해시함수]
		 * 
		 * 			[1998]-	[][][][][][]
		 * 			[1999]-	[1][2][3][][][][][]
		 *                     [][][][][][]
		 * 			[2000]-	[][][]
		 * 			[]
		 * 			[]
		 * 			[]
		 * 
		 * 
		 * 
		 */
		// <E> [E]lement ==요소
		// <K, V> [K]ey, [V]alue
		//Hashtable<String, String> ht = new Hashtable<String, String>(11, 0.75);
		Hashtable<String, String> ht = new Hashtable<>();
		ht.put("admin", "관리자");
		ht.put("hong", "홍길동");
		ht.put("root", "홍길동");

		System.out.println(ht);
		System.out.println(ht.size()); //엔트리의 갯수
		
		// 모든 key 조회.
		/*[1]
		Enumeration<String> en = ht.keys();
		while (en.hasMoreElements()) {
			String key = en.nextElement();
			System.out.println( key );
		}
		*/
		/*
		//[2] 모든 key 조회 . 모든key 조회
		Set<String> keys = ht.keySet();
		Iterator<String> rs =  keys.iterator();
		while (rs.hasNext()) {
			String key =  rs.next();
			System.out.println(key);
			}
		*/
		
		// key를 알 때 value 값을 얻어온는 방업
		//String value = ht.get("root");
		//System.out.println( value );
		
		//String value = ht.get("kenik");
		//String value = ht.getOrDefault("kenik","켄익");
		//System.out.println( value );
		
		/*
		Collection<String> values = ht.values();
		
		Iterator<String> ir = values.iterator();
		while (ir.hasNext()) {
			String value =  ir.next();
			System.out.println(value);
		}
		*/
		// [문제] park 키가 존재하는지 확인후에
		// park 박철로 엔트리를 추가하세요
		//ht.contains(Value);
		//ht.containsKey(key);
		//ht.containsValue(value);
		/*
		if (!ht.containsKey("park")) {
			ht.put("park", "박철");
			}System.out.println( ht);
		*/
		
		//해시테이블 출력하는 메서드() 호출
		dispHT(ht);
		
		
		
	}//main
	private static void dispHT(Hashtable<String, String> ht) {
		Set<Entry<String, String>>  es =ht.entrySet();
		Iterator<Entry<String, String>> ir = es.iterator();
		while (ir.hasNext()) {
			Entry<String,String> entry = ir.next();
			String key = entry.getKey();
			String value = entry.getValue();
			System.out.printf( "%s : %s ",key , value);
			
		}
	}
	
//	private static void dispHT(Hashtable<String, String> ht) {
//		// key : value
//		/*
//		 * hong : 홍길동
//		 * root : 관리자
//		 * admine: 관리자
//		 */
//		
////		for (int i = 0; i < ht.size(); i++) {
////			System.out.printf("%s : %s \n", ht.);}
//		Enumeration<String> en = ht.keys();
//		while (en.hasMoreElements()) {
//			String key = en.nextElement();
//			String value = ht.get(key);
//			System.out.printf( "%s : %s ",key , value);
//		
//		
}//class












