package days02;

// DBConn.java 클래스를 사용해서 코딩 수정.

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import com.util.DBConn;

import domain.DeptEmpSalgradeVO;

public class Ex01_02 {

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
				
		String ipAddress = "192.168.10.167";
		String sid = "xe";
		String url = String.format("jdbc:oracle:thin:@%s:1521:%s",ipAddress,sid) ;
		String user = "scott";
		String password = "tiger";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		DeptEmpSalgradeVO vo = null;
		ArrayList<DeptEmpSalgradeVO> list = new ArrayList<DeptEmpSalgradeVO>();
		
		int empno;
		String dname,ename ;
		Date hiredate ;
		double pay ;
		int grade ;

		try {
			conn = DBConn.getConnection(url,user,password);
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
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			
			try {
				rs.close();
				stmt.close();
//				conn.close(); DBC 에서 만든 close작업 꼭
				DBConn.close();// 다시한번 확인
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}//main

	private static void dispEmpList(ArrayList<DeptEmpSalgradeVO> list) {
		
		if(list.isEmpty()) {
			System.out.println("사원이 존재하지 안습니다.");
			
		}
		
		Iterator<DeptEmpSalgradeVO> ir = list.iterator();
		while (ir.hasNext()) {
			DeptEmpSalgradeVO vo =  ir.next();
			System.out.println(vo);
			
		}
		
	}//list

}//class
