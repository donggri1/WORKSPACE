package days02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Scanner;

import com.util.DBConn;

import domain.DeptEmpSalgradeVO;

/**
 * @author kenik
 * @date 2024. 3. 18. - 오전 7:46:53
 * @subject  DBConn.java 클래스를 사용해서 코딩 수정. 
 * @content
 */
public class Ex01_02 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String searchWord = null;
		System.out.print("> 검색할 사원명 입력 ? ");
		searchWord = scanner.next(); 

		String sql =
				String.format(
				"SELECT empno, dname, ename, hiredate, sal+NVL(comm,0) pay, grade "
				+ "FROM dept d RIGHT OUTER JOIN emp e ON d.deptno = e.deptno "
				+ "            JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal "
				+ "WHERE REGEXP_LIKE (ename, '%s', 'i')", searchWord );
		
		String ipAddress = "192.168.10.167"; 
		String sid = "xe";
		
		String url = String.format(
				"jdbc:oracle:thin:@%s:1521:%s", ipAddress, sid);
		String user = "scott";
		String password = "tiger";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		DeptEmpSalgradeVO vo = null;
		ArrayList<DeptEmpSalgradeVO> list = null;

		int empno, grade;
		String dname, ename;
		Date hiredate;
		double pay;
		
		try {
			conn = DBConn.getConnection(url, user, password);
			// 3. 필요한 조작(CRUD)
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if ( rs.next() ) {
				list = new ArrayList<>();
				
				// empno, dname, ename, hiredate, pay, grade
				do {
					empno = rs.getInt("empno");
					dname = rs.getString("dname");
					ename = rs.getString("ename");
					hiredate = rs.getDate("hiredate");
					pay = rs.getDouble("pay");
					grade = rs.getInt("grade");					
					vo = new DeptEmpSalgradeVO(empno, dname, ename, hiredate, pay, grade);				
					list.add(vo);					
				} while (rs.next());
				
			} // if
			
			dispEmpList(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 4. Connection 닫기
			try {
				rs.close();
				stmt.close();
				// conn.close();  (꼭 기억)
				DBConn.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		}
		
		System.out.println(" end ");

	} // main

	private static void dispEmpList(ArrayList<DeptEmpSalgradeVO> list) {
		if( list == null) {
			System.out.println("사원이 존재하지 않습니다.");
			return;
		}		
		// 사원 출력.
		Iterator<DeptEmpSalgradeVO> ir = list.iterator();
		while (ir.hasNext()) {
			DeptEmpSalgradeVO vo = ir.next();
			System.out.println( vo );
		}	
		
	}

} // class







