package days06;

<<<<<<< HEAD
import java.lang.reflect.Array;
import java.util.Iterator;

import oracle.sql.ARRAY;

public class Ex01 {
public static void main(String[] args) {
	
	String result = "";
	String str1 = "aaaaa";
	String str2 = "bbbbbasdf";

	int m  = Math.min(str1.length(), str2.length());
	
	for (int i = 0; i < Math.min(str1.length(), str2.length()); i++) {
		
		result+= str1.charAt(i)+""+str2.charAt(i);
		
	}
	
	if (str1.length()>m) {
		result += str1.substring(m);
	} else {
		result += str2.substring(m);

	}
	
	
	System.out.println(result);
	
}//main

}//class
=======
public class Ex01 {
	public static void main(String[] args) {

		String my_string = "string";

		int k =3;

		String answer =  solution(my_string, k);
		System.out.print(answer);
		
		for (int i = 1; i < k; i++) {
			
			my_string +=my_string;
			
		}

	}

	public static String solution(String my_string, int k) {
		String answer = "";
		
		for (int i = 0; i < k; i++) {
			System.out.print(my_string);
			
		}
		
		
		return answer;
	}

}
>>>>>>> f12e1cdf3065d30d661772fd4c6450f9aacf0bcb
