package days01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import domain.DeptVO;
import oracle.jdbc.pool.OracleDataSource;

// scott 접속 + dept 테이블 select 
public class Ex03_02 {

	public static void main(String[] args) throws SQLException  { //메모장 타이핑 시험
		String className = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		int deptno;
		String dname;
		String loc;
		ArrayList<DeptVO> list = null;
		
//		1.드라이버
		try {
			Class.forName(className);
//		2.드라이버 이용해서가져오기
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println(conn.isClosed() ? "Db 닫힘" : "Db 열림");
//			3.내용적기
			
			String sql = "SELECT * FROM dept";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
//				deptno = rs.getInt(1); // columnIndex
//				dname = rs.getString(2);
//				loc = rs.getString(3);

				deptno = rs.getInt("deptno"); //columnlabel(컬럼명)
				dname = rs.getString("dname");
				loc = rs.getString("loc"); 			//반드시외우기
				
//				System.out.printf("%d\t%s\t%s\n"
//						,deptno,dname,loc);
				
				DeptVO vo = new DeptVO(deptno, dname, loc);
				list.add(vo);
				
				
			}//while
			
			dispDept(list);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println(conn.isClosed() ? "Db 닫힘" : "Db 열림");
		
//		
//		4.닫기


	}//main

	private static void dispDept(ArrayList<DeptVO> list) {
		
		Iterator<DeptVO> ir = list.iterator();
		while (ir.hasNext()) {
			DeptVO vo = ir.next();
			System.out.println(vo.toString());
			
		}
		
	}

}//class
