package solution;

public class Solution {
	   public static void main(String[] args) {

	      String str1 ="aaaaa";
	      String str2 ="bbbbb";



	      String answer =  solution(str1 , str2);
	      
	      System.out.println(answer);

	   }//main

	   public static String solution(String str1, String str2) {
	      String answer = "";
	      
	    	str1 ="aaaaa";
	    	str2 ="bbbbb";
	    	int sw=0;
	    	char[] Arr1 = str1.toCharArray();
	        char[] Arr2 = str2.toCharArray();
	        

	        for (int i = 0; i < Arr1.length+Arr2.length; i++) {
				if (sw==0) {
					answer =Character.toString( Arr1[i]);
				
					sw=-1;
				}else if(sw!=0) {
					answer =Character.toString( Arr2[i]);
					sw=0;
				}
	        	
	        	
			}
	    
	        
	        return answer;
	   }

	}//class
