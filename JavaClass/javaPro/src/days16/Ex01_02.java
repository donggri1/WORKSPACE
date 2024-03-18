package days16;

import java.util.stream.Stream;

public class Ex01_02 {

	public static void main(String[] args) {
		String n = "keNik";
		String m = "kKnie";

		n = n.toUpperCase().chars().sorted()
				.collect(StringBuilder::new, StringBuilder::appendCodePoint,StringBuilder::append).toString();
		
		m= Stream.of(m.toUpperCase().split(""))
				.sorted()
				.collect(col)
		

	}//main

}//class
