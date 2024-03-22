package days26;

import java.io.FileInputStream;
import java.io.ObjectInputStream;

public class Ex04_02 {

	public static void main(String[] args) {

		String pathname = ".\\src\\days26\\Child.ser";

		try(FileInputStream in = new FileInputStream(pathname);
			ObjectInputStream ois= new ObjectInputStream(in)) {

			Child c =  (Child) ois.readObject();
			String name = c.name;
			int age = c.age;
			
			
			

			System.out.printf(
					"name=%s,age=%d\n",name,age);

		} catch (Exception e) {

		}		


	}//main

}//class
