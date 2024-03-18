package days05;

/**
 * @author LEE
 * @date 2024. 1. 5. - 오후 2:42:18
 * @subject if, switch,for,break
 * @content [while 조건반복문]
 */
public class Ex07 {

	public static void main(String[] args) {
		/*
		if (조건) {
			//명령코딩;
		}
		
		while (condition) {
			//명령코딩;
		}
		*/
		/*[1]
//		while문으로 1~10까지와 합출력
		int i = 1;
		int sum=0;
		while (i<=10) {
			sum+=1;
			System.out.printf("%d+",i);
			i++;
			}
		System.out.printf("=%d\n",sum);
		*/
		//[2]
		/*
		int i = 0,sum=0;
			while (i<10) {
				i++;
				System.out.printf("%d+",i);
				sum+=i;
				
			}//while
			System.out.printf("=%d\n",sum);
			}
			*/
		
		//[3]
		/*
		 * 		대입		i		출력	sum
		 * 		0			1		1+		1
		 * 		1			2		1+2+	3
		 * 		2			3		1+2+3	6
		 * 		3			4		1+2+3+4	10
		 * 		 
		 * 		10			11		1+..+11	66
		 *  
		 */
		/*
		int i = 0, sum = 0;
//	      while ( i++ <= 10 ) {
	    	  while ( ++i <= 10 ) {
	         System.out.printf("%d+", i); 
	         sum += i;
	         
	      } // while
	      System.out.printf("=%d\n", sum);
		*/
		/*
		//[4] 10+9+ =55
		int i = 10, sum = 0;
	    	  while ( i>= 1 ) {
	         System.out.printf("%d+", i); 
	         sum += i;
	         i--;
	      } // while
	      System.out.printf("=%d\n", sum);
	      */
		int i = 10, sum = 0;
	    	  while ( true ) {
	    		  if(i<1)break;
	         System.out.printf("%d+", i); 
	         sum += i;
	         i--;
	      } // while
	      System.out.printf("=%d\n", sum);
		
	      
	      
	      
	      
	}//main
}
