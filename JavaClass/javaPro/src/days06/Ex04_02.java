package days06;

/**
 * @author LEE
 * @date 2024. 1. 8. - 오후 2:43:26
 * @subject
 * @content
 */
public class Ex04_02 {

	public static void main(String[] args) {

//		4. 알파벳(대,소문자) 코드 및 문자를 출력하는  코딩을 하세요.
//		   ( 조건 : 한 라인에 10개씩 출력 )
		
		//한 라인에 10개씩 출력
		
		
		for (int i = 'A', count = 1, lineNumber=1; i <= 'z'; i++) {
			
//			if (i>'Z' && i<'a') continue;
			if(Character.isAlphabetic(i))
				
				if(count %10 == 1) System.out.printf("%d : ", lineNumber++ );
				
				System.out.printf("%c(%03d)",(char)i,i);
				 
				if (Character.isUpperCase(i)) {				
					
					if (i%10==4) {System.out.println();				
					}					
				} else {
					if (i%10==0) {System.out.println();			}
				if (i%10==4) {System.out.printf("%d",i/10+1);					
				}
				count++;
				
				
				
			
			}
		}//for
		
		
	}//main

}//class
