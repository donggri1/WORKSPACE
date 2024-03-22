package days10;

import java.io.IOException;
import java.util.Scanner;

/**
 * @author LEE
 * @date 2024. 1. 12. - 오후 2:43:30
 * @subject [배열 단점 파악] =>컬렉션 (collection)
 * @content
 */
public class Ex04 {

	public static int index = 0;
	public static char con = 'y';
	public static Scanner scanner = new Scanner(System.in);
	public static int [] m = new int[3];
	public static void main(String[] args) throws IOException {

		int [] m = new int[3];
		
		String [] menus = {"추가","수정","삭제","검색","조회","종료"};

		int selectedNumber; // 선택된 메뉴를 저장하는 변수 선언
		
		while (true) {
			dispMenus(menus);
			selectedNumber = selectMenus();
			processMenus(selectedNumber);			
		}
		
	}//main
	
	private static void processMenus(int selectedNumber) throws IOException {
		switch (selectedNumber) {
		case 1:	// 추가
			add();
			break;
		case 2:	// 수정
			edit();
			break;
		case 3:	// 삭제
			remove();
			break;
		case 4:	// 검색
			search();
			break;
		case 5:	// 조회 == 배열의 모든 요소(목록)를 출력
			list();
			break;
		case 6:	// 종료
			exit();
			break;
		}//switch
		
		//바로 메뉴 출력 가지 못하게 일시정지.
		일시정지();
		
	}
	private static void 일시정지() {
		System.out.println("> Enter를 누르면 계속합니다.");
		
		try {
			System.in.read();//13 제거
			System.in.skip(System.in.available());//10 제거
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//엔터 [13,10]
		
	}

	private static void list() {
		System.out.println("[5.	조회}");
		
		if (index==0) {
			System.out.println("\t 추가된 요소가 없습니다.");
			return;			
		}
		//출력 
		for (int i = 0; i < index; i++) {
			
			System.out.printf("m[%d]=%d ",i,m[i]);
					
		}System.out.println();
	}

	private static void search() {
		System.out.println("[4. 검색]");
		
	}

	private static void remove() {
		System.out.println("[3. 삭제]");
		
	}

	private static void edit() {
		System.out.println("[2. 수정]");
		
	}

	private static void add() throws IOException {
		System.out.println("[1. 추가]");
		do {if(m.length == index) {
			increaseArrayM();
			}		
			System.out.printf(">정수입력?");
			int n = scanner.nextInt();
			m[index++]= n;
			
			System.out.print("\t 요소추가 계속할거냐?");
			con = (char)System.in.read();
			System.in.skip(System.in.available());//13,10
		} while (Character.toUpperCase(con)=='Y');
		
	}

	private static void increaseArrayM() {

			int [] temp = new int[m.length+3];
			
			for (int i = 0; i < m.length; i++) {
				temp[i]=m[i];				
			}
			m=temp;
			
		}
		
	

	//6.종료 - 프로그램을 종료하는 함수
	private static void exit() {
		System.out.println("\n\n 프로그램 종료합니다.~");
		System.exit(0);
		
	}

	// 1~6 메뉴를 선택해서 반환하는 함수
	private static int selectMenus() {
		
		String inputData;
		//유효성검사
		do {System.out.println();
			System.out.print(">메뉴 선택하세요?");
			
			inputData=scanner.next();
			
		} while (!inputData.matches("[1-6]"));
		
		return Integer.parseInt(inputData);
	}

	private static void dispMenus(String[] menus) {
		
		System.out.println("\t\t\t메뉴");
		for (int i = 0; i < menus.length; i++) {
			System.out.printf("[%d]%s\t",i+1,menus[i]);			
		}//for
	}

}//class
