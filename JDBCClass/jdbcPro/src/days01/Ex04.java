package days01;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import domain.DeptVO;
import domain.EmpVO;
import oracle.jdbc.driver.OracleDriver;
import oracle.jdbc.internal.OracleConnection;
import oracle.sql.ORAData;

public class Ex04 {

	public static void main(String[] args) throws SQLException {
		//문제
		//부서번호(DEPTNO)를 입력받아서
		//emp 테이블에서 SELECT 하는 코딩..
		//EMPVO
		// dispEmp(ArrayList<EmpVO>list)
//		SELECT *
//		FROM emp
//		WHERE deptno = 40;
		
		String className = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		int deptno ;
		int empno ;
		String ename;
		String job;
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
		
		try {
			Class.forName(className);
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println(conn.isClosed()?"db out":":db open");
			
			String sql ="select * from emp where deptno=30";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				deptno =rs.getInt("deptno");
				empno =rs.getInt("empno");
				ename =rs.getString("ename");
				job= rs.getString("job");
				
			
				
				EmpVO vo = new EmpVO(empno,ename,job,deptno);
				list.add(vo);
				
			}
			
			dispEmp(list);
			
			
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
		
		System.out.println(conn.isClosed()?"db ":"dbop");
		
	
		
	}//main

	private static void dispEmp(ArrayList<EmpVO> list) {
		// 

		Iterator<EmpVO> ir =list.iterator();
		while (ir.hasNext()) {
			EmpVO vo = (EmpVO) ir.next();
			System.out.println(vo.toString());
		}
		
	}

	

}//class
