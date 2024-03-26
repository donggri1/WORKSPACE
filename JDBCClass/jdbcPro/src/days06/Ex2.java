package days06;

import java.util.Arrays;
import java.util.Iterator;

public class Ex2 {

	public static void main(String[] args) {
		int answer = 0 ;
		int a = 91;
		int b = 2;
		boolean flag = true;//true ==0
		
		String code ="abc1abc1abc";
		boolean mode = true;
		String ret = "";
		for (int i = 0; i < code.length()-1; i++) {

	
				 if (mode==true) {
					 if( code.charAt(i)!=1) {
						 
//						(code.charAt(i))%2==0?ret.concat(code).charAt(i):0;
						 
						if ((code.charAt(i))%2==0) {
							ret.concat(Character.toString( code.charAt(i)));
						}
						 
					 }else if (code.charAt(i)==1) {
						mode=!mode;
					}
					 
				}
				 
				 
				 
				 else if(mode==false) {
				 
				 	if (code.charAt(i)!=1) {
					
				 		if (code.charAt(i)%2==1) {
							
				 			ret.concat(Character.toString(code.charAt(i)));
						}else if (code.charAt(i)==1) {
							mode=!mode;
						}
					}
				 	
			 }

			 
			 }//endif
	
		System.out.println(ret);
				
		
		
		
		
		
		
		
		
		
		
		
		
		
		System.out.println(answer);
				


		
		


		
	}//main

}