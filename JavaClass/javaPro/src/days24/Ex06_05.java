package days24;

import java.util.ArrayList;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오후 3:09:33
 * @subject [ 제한된 제네릭 클래스 ]
 * @content Box<T> Type 모든 자료형 Integer, Double, MemberVO...
 * 
 * 				T를 먹을 수 있는 과일타입으로 제환
 * 
 */
public class Ex06_05 {
	public static void main(String[] args) {
		
		
		/*	
		Box04<Toy> toyBox = new Box04<>();
		toyBox.add(new Toy());
		toyBox.add(new Toy());
		toyBox.add(new Toy());
		*/
	/*
		Box04<Apple> aBox = new Box04<>();
		Box04<Grape> gBox = new Box04<>();
		Box04<빵> 빵Box = new Box04<>();
		
	*/	
		
		
		
	}//main
}//class
/*
interface eatable{
	//
}

class Fruit extends Object implements eatable{

	@Override
	public String toString() {
		return "furit";
	}
	
}
class Apple extends Fruit{
	public String toString() {
		return "Apple";
	}	
}
class Grape extends Fruit{
	public String toString() {
		return "Grape";
	}	
}
class Toy{
	public String toString() {
		return "Toy";
	}
}

class 빵 implements eatable{
	
}

// 먹을 수 있는 과일만 T 타입으로 + 제네릭 클래스 선언
//class Box04<T>{
class Box04<T extends Fruit & eatable>{
	ArrayList<T> list = new ArrayList<T>();
	void add(T item) { this.list.add(item);}
	int size() {return this.list.size();}
	T get(int i) {return this.list.get(i);}
	public String toSting() {return this.list.toString();}
	
	
	
}
*/
