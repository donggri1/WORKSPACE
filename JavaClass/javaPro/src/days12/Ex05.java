package days12;

public class Ex05 {

	public static void main(String[] args) {
		// [가변 배열]
		// 1반 학생 수 : 10명
		// 2반 학생 수 : 8명
		// 3반 학생 수 : 20명
		
		int [][] m = new int [3][];
		m[0] = new int [10];
		m[1] = new int [8];
		m[2] = new int [20];
		
		dispM(m);
		
		

		
	}//main
	private static void dispM(int[][] n) {
		for (int i = 0; i < n.length; i++) {
			
			for (int j = 0; j < n[i].length; j++) {
				System.out.printf("[ ]");
			}System.out.println();
		}
		
		
	}
}//lcass
