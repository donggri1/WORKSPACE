package days02;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import domain.DeptEmpSalgradeVO;

public class Ex01 {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		String searchWord = null;
		System.out.println(">검색할 사원명 입력 ?");
		searchWord = scanner.next();
		
		
		String sql = 
				String.format(
				
				"SELECT empno,dname,ename,hiredate,sal+NVL(comm,0) pay ,grade "
						+" FROM dept d RIGHT OUTER JOIN  emp e ON d.deptno = e.deptno "
						+"            JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal "
						+" WHERE REGEXP_LIKE(ename,'%s','i')",searchWord);
				
		String className = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		Connection conn = null;
		java.sql.Statement stmt = null;
		ResultSet rs = null;
		
		DeptEmpSalgradeVO vo = null;
		ArrayList<DeptEmpSalgradeVO> list = new ArrayList<DeptEmpSalgradeVO>();
		
		int empno;
		String dname,ename ;
		Date hiredate ;
		double pay ;
		int grade ;
		try {
			Class.forName(className);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				
				list = new ArrayList<>();
				
				
			do {
				empno = rs.getInt("empno");
				dname = rs.getString("dname");
				ename = rs.getString("ename");
				hiredate =rs.getDate("hiredate");
				pay = rs.getDouble("pay");
				grade = rs.getInt("grade");
				vo = new DeptEmpSalgradeVO(empno, dname, ename, hiredate, pay, grade);
				list.add(vo);
				
			} while (rs.next());
					
			}// if
			
			dispEmpList(list);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}//main

	private static void dispEmpList(ArrayList<DeptEmpSalgradeVO> list) {
		if (list.isEmpty()) {
			System.out.println(" 사원이 존재하지 않습니다. ");
			
		}
		
		
		Iterator<DeptEmpSalgradeVO> ir = list.iterator();
		while (ir.hasNext()) {
			DeptEmpSalgradeVO vo =  ir.next();
			System.out.println(vo);
			
		}
		
	}//list

}//class
