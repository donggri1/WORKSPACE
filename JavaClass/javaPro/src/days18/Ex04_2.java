package days18;

import java.util.Arrays;

/**
 * @author LEE
 * @date 2024. 1. 24. - 오후 2:06:14
 * @subject
 * @content
 */
public class Ex04_2 {

	public static void main(String[] args) {
		//String todo = "TODO Auto-generated method stub";
		
		
		
		// System.out.println(todo.codePointAt(0)); 'T' -> 84
		// boolean todo.equals("");
		// int	todo.compareTo("");		0 양수 음수
		// int todo.compareToIgnoreCase(""); 0 양수 음수 대소문자구분 X
		/*
		System.out.println( "ABC".compareToIgnoreCase("AbC") ); // -33
		System.out.println( "ABC".compareTo("AcC") ); // -33
		System.out.println( "CBC".compareTo("AcC") ); // 2
		*/
		
		//todo.endsWith(suffix);	// 접미사
		//todo.startsWith(prefix);// 접두사
		/*
		String url = "https://www.naver.com";
		System.out.println( url.startsWith("https://"));
		System.out.println( url.endsWith(".com"));
		*/
		
		// [ 문제]
		String directory = "C:\\spring\\src";
		String fileName = "Sample.java";
		
		//String path = directory + fileName;
		
		// char 마지막한문자 =directory.charAt(directory.length()-1);
		// if(마지막 한문자 == '\')
		/*
		String path = directory 
					+ (directory.endsWith("\\")?"":"\\") 
					+ fileName;
		
		System.out.println( path );
		*/
		
		//todo.equals(todo);
		
		//byte [] todoByteArray = todo.getBytes();
		//System.out.println( Arrays.toString(todoByteArray));
		
		//todo.indexOf(0);		//앞에서 부터 찾아서 찾은 인덱스값을 반환하는 메서드
		//todo.lastIndexOf(0);	//뒤에서 부터 찾아서 찾은 인덱스값을 반환하는 메서드
		//System.out.println( todo.indexOf("Auto") ); // 5
		//System.out.println( todo.lastIndexOf("Auto") );//5 하나라면 같은값 두개라면 다른값
		
		//todo.matches(regex)
		
		//System.out.println(todo.repeat(30));
		
		String todo = "TODO Auto-generated all method Alert stub";
		
		
		
		// String.valueOf() 각 자료형의값을 문자열(String) 변환하는 메서드
		/*
		// 3.14 +""
		// true + ""
		// 100 + ""
		char [] m = {'a','2','x'};
		String.valueOf(m);
		System.out.println(m); // "a2x"
		*/
		/*
		// char[] -> String
		char [] m = {'a','2','x'};
		String s = new String(m);
		*/
		//todo.format("")
		/*
		System.out.println( String.join("</li><li>", "권맑음","구본혁","한재호") );
		*/
		/*
		//todo auto-generated all method alert stub
		System.out.println( todo.toLowerCase() );
		//TODO AUTO-GENERATED ALL METHOD ALERT STUB
		System.out.println( todo.toUpperCase() );
		*/
		//System.out.println( todo.toString() );
		
		//String -> byte[] 				getByte();
		//문자열을 char[]로 바꾸는함수 toCharArray()
		//char [] todoCharArray = todo.toCharArray();
		
		
		/*
		System.out.println( todo.substring( 2, 7 ) );	//Do Au		String
		System.out.println( todo.subSequence( 2, 7 ) );	//Do Au		charSequence
		*/
		//todo.substring(0);
		//todo.substring(0, 2);
		
		
		/*
		todo.strip();			// trim() 앞 뒤 공백 제거
		todo.stripLeading();	// leading 이끄는 앞 공백제거
		todo.stripTrailing();	// trailing			뒤 공백 제거
		
		System.out.println( "["+"   홍길동   ".trim()+"]");
		System.out.println( "["+"   홍길동   ".strip()+"]");
		System.out.println( "["+"   홍길동   ".stripLeading()+"]");
		System.out.println( "["+"   홍길동   ".stripTrailing()+"]");
		*/
		//잘라내는것
		/*
		String regex = "";
		//String [] todoArr = todo.split(regex);
		String [] todoArr = todo.split(regex,3);// limit
		System.out.println( Arrays.toString(todoArr));
		*/
		/*
		System.out.println( todo.replace('e', '*'));
		System.out.println( todo.replace("method", "방법"));
		//									regex 정규표현식
		System.out.println( todo.replaceAll("[Aa]\\.*", "*")); //정규표현식에 만족하는 모든 매개변수로 바꾸겠다.
		System.out.println( todo.replaceFirst("[Aa]\\.*", "*")); //정규표현식에 만족하는 모든 매개변수로 바꾸겠다.
		*/
		
		
		
		
		
	}//main

}
