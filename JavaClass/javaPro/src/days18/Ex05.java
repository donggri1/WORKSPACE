package days18;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.nio.Buffer;

/**
 * @author LEE
 * @date 2024. 1. 24. - 오후 3:17:58
 * @subject
 * @content
 */
public class Ex05 {

	public static void main(String[] args) {

	      // String dir = "E:\\Class\\SS20Class\\Workspace\\JavaClass\\javaPro\\src\\days18";
	      String key = "user.dir";
	      String userDir = System.getProperty(key);
	      // System.out.println(userDir);      
	      String readPath = userDir.concat("\\src\\days18\\SS20.txt");
	      String writePath = userDir.concat("\\src\\days18\\SS20.html");
	      // System.out.println( path );
	      
	      String [] names = new String[15];
	      String name = null;
	      int index = 0;
	      
	      try ( FileReader fr = new FileReader(readPath);
	           BufferedReader br = new BufferedReader(fr);
	           FileWriter fw = new FileWriter(writePath);   ){
	         
	         while (    (name = br.readLine()) != null ) {
	            names[index++] = name;
	         } // while
	         
	         String namesJoin = "<ol><li>"+ String.join("</li><li>", names) + "</li></ol>";
	         System.out.println( namesJoin );
	         
	         fw.write(namesJoin);
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } // try
	      
	      
	      System.out.println("end");
	      

	   } // main

	} // class









