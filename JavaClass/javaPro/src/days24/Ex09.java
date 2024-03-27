package days24;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오후 4:33:38
 * @subject
 * @content
 */
public class Ex09 {
	//					0	 1	  2		3
	//enum Direction {EAST,SOUTH,WEST,NORTH}
	//				   100  200  300   400
	//enum Direction {EAST,SOUTH,WEST,NORTH}
	
	//The constructor Ex09.Direction(int) is undefined
	enum Direction {
		 EAST(100, "▶"), SOUTH(200, "▼"), WEST(300, "◀"), NORTH(400,"▲") ;
		
		
		
		private final int value ;
		private final String symbol ;
		
		Direction (int value, String symbol){
			this.value = value;
			this.symbol =symbol;
		}

		public String getSymbol() {
			return symbol;
		}

		public int getValue() {
			return value;
		}
		
	}
	
	public static void main(String[] args) {
		Direction [] dirArr = Direction.values();
		for (Direction dir: dirArr) {
			System.out.println(dir.name()+"/"+dir.ordinal()+"/"+dir.getSymbol()+" / "+dir.getValue());
		}
		
	}//main
}////class
