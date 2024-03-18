package com.util;

public class Mycalender {
	//평년 false 반환
	//윤년 true 반환
	public static boolean lisLeapYear(int year) {
		boolean result =false;
		if(year % 4 == 0 && year % 100 !=0|| year%400==0) {
			result=  true;
		}
		return result;
	}
	
	/*
	public static String lisLeapYear(int year) {
		String result = "평년";
		if(year % 4 == 0 && year % 100 !=0|| year%400==0) {
			result=  "윤년";
		}
		return result;
	}
	*/
}
