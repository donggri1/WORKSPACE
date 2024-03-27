package days09;

/**
 * @author LEE
 * @date 2024. 1. 11. - 오전 10:03:55
 * @subject
 * @content
 */
public class Ex01 {

	public static void main(String[] args)  {

		double result = recursivePow(2,5);
		System.out.println(result);

		
	}//main

	private static double recursivePow(int n, int m) {
		if return n*recursivePow(n,m-1);
		else if( m == 1 ) return n;
		else if( m== 0 ) return 1;
		else return 1/(resursivePow(n,-1*m));
	}

	
	
	
}//class
