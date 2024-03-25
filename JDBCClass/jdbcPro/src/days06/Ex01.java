package days06;

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
