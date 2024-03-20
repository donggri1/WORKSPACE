package days04;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.Scanner;

import com.util.DBConn;

public class Ex04_tr {

	/**
	 * @param dept - select 부서조회
	 * 			up_selectdept
	 */
	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		System.out.println("입력할정보를 입력하세요");
		int deptno= scanner.nextInt();
		String dname = scanner.next();
		String loc = scanner.next();
		
		Connection conn = null;
		CallableStatement cstmt = null;
		int check = 0;
		
		String sql = "";
		
		conn = DBConn.getConnection();
		
		try {
			cstmt = conn.prepareCall(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class
