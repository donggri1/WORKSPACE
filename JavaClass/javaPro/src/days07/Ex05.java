package days07;

/**
 * @author LEE
 * @date 2024. 1. 9. - 오후 12:36:46
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {
		//[순서도]
		// ㄴ 순서도(영어: flowchart)는 워크플로 혹은 프로세스를 보여주는 다이어그램의 한 종류
		// 짝수는 sum -
		// 홀수는 sum +
		int sum=0;
		//스위칭변수
		boolean sw = false;
		for (int i = 1; i <=10; i++) {
			//[4]
			System.out.printf(sw?"%d+":"%d-",i);
			sum += sw? -i:i;
			sw=!sw;
			//***[3] 스위칭 변수를 사용하는 방법 . (기억)
			/*
			if ( sw ) {
				System.out.printf("%d+",i);
				sum-=i;
				//sw =!sw;
			} else {System.out.printf("%d-",i);
			sum+=i;
			//sw = !sw; // false->true
			}sw = !sw;
			}
			System.out.printf("=%d",sum);
			*/
	}
	//[2]
	/*
		System.out.printf(i%2 ==0?"%d+":"%d-",i);
		sum += i%2==0? -i:i;
	 */
	//[1]

	/*if (i%2==0) {
				System.out.printf("%d+",i);
				sum-=i;
			} else {System.out.printf("%d-",i);
			sum+=i;
			}
		}
		System.out.printf("=%d",sum);
	 */



}//main

}//class
