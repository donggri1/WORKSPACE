package days08;

import java.util.Arrays;

public class Ex06_03 {

	public static void main(String[] args) {
	      String rrn = "830412-1700001";
	      
	      String [] rrnArr = rrn.split("-");
	      System.out.println(rrnArr[0]);
	      System.out.println(rrnArr[1].charAt(0));
	      
	      String printRRN =rrnArr[0]+"-"+rrnArr[1].charAt(0)+"******";
	      
	      System.out.println(printRRN);
	      
	      
	      
	     

	}

}
