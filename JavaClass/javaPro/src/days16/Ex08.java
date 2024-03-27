package days16;

//static import 문
import static java.lang.Math.random;

public class Ex08 {

	public static void main(String[] args) {
		/*
		 * 1. 패키지(package)
		 *	- 서로 관련있는 클래스,인터페이스들의 묶음
		 *	- 클래스를 효율적으로 관리.
		 *	예) java.io 패키지
		 *			input 입력
		 *			output 출력
		 *	-days14.Point 클래스
		 *	-days15.Point 클래스
		 *	동일한 클래스 일지라도 충돌을 막기 위해서
		 *	패키지를 사용.
		 *	예) 다른 개발자가 구현한 클래스명
		 *		또 다른 개발자가 구현한 클래스 명이
		 *		동일할지라도 패키지명으로 충돌을 막고
		 *		구분해서 사용할 수 있다.
		 * 
		 * - 도메인명 == 패키지명
		 * 	naver.com
		 * 	sist.org
		 * - 패키지는 물리적으로 디렉토리(폴더) 생성
		 * 예) java.lang.System 클래스
		 * 
		 * 		java 폴더
		 * 		ㄴ lang 폴더
		 * 			ㄴ System.class 파일
		 * 	- 클래스를 선언할 때 소스파일의 첫 번째 라인(문장)에
		 *		package를 선언한다.
		 *	- 패키지명은 소문자로 작명한다.
		 *	- 소스파일에 
		 *	다른 패키지의 클래스를 사용하려면
		 *	import 문을 사용해서 클래스가 포함된 패키지명을
		 *	적어야 된다.
		 *	- [클래스의 풀네임(full name)]을 적으세요.
		 *		=패키지명.클래스명
		 *	-import 문이 없는 경우 Ctrl + Shift + O 단축키 
		 *	자동으로 import문 완성
		 *	- import java.io.*;
		 *			java.io 패키지 안의 모든 것(클래스)을 import 하겠다.
		 *
		 *
		 */
		
//		System.out.println(Math.random());
//		System.out.println(Math.PI);
		System.out.println(random());
		
		

	}//main

}
