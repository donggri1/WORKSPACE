package days03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

import com.util.DBConn;

import domain.DeptEmpSalgradeVO;
import domain.SalgradeVO;

public class Tr {

	public static void main(String[] args) {

		/*
		[실행결과]
		1등급	(     700~1200 ) - 2명                        key
		   	20	RESEARCH	7369	SMITH	800               value
		   	30	SALES			7900	JAMES	950
		2등급	(	1201~1400 ) - 2명
			30	SALES	7654	MARTIN	2650
			30	SALES	7521	WARD		1750	
		3등급	(	1401~2000 ) - 2명
			30	SALES	7499	ALLEN		1900
			30	SALES	7844	TURNER	1500
		4등급	(	2001~3000 ) - 4명
		    10	ACCOUNTING	7782	CLARK	2450
			20	RESEARCH	7902	FORD	3000
			20	RESEARCH	7566	JONES	2975
			30	SALES	7698	BLAKE	2850
		5등급	(	3001~9999 ) - 1명   
			10	ACCOUNTING	7839	KING	5000
		 */		

		String sql = 
				"SELECT grade, losal, hisal "
						+ "     , COUNT(*) cnt "
						+ "FROM salgrade s JOIN emp e ON e.sal BETWEEN s.losal AND s.hisal "
						+ "GROUP BY grade, losal, hisal "
						+ "ORDER BY grade ASC";
		String empSql = "SELECT d.deptno, dname, empno, ename, sal  "
				+ "FROM dept d RIGHT JOIN emp e ON d.deptno = e.deptno "
				+ "            JOIN salgrade s  ON sal BETWEEN losal AND hisal "
				+ "WHERE grade = ?   ";


		Connection conn = null;
		PreparedStatement pstmt = null,empPstmt = null;
		ResultSet rs = null,empRs = null;
		SalgradeVO vo = null;
		ArrayList<DeptEmpSalgradeVO> empList = null;
		DeptEmpSalgradeVO empVo = null;

		LinkedHashMap<SalgradeVO,ArrayList<DeptEmpSalgradeVO>> map = new LinkedHashMap<SalgradeVO, ArrayList<DeptEmpSalgradeVO>>();

		conn = DBConn.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				do {
					int grade = rs.getInt("grade");
					vo = new SalgradeVO( 
							grade
							,rs.getInt("losal")
							,rs.getInt("hisal")
							,rs.getInt("cnt")
							);
					empPstmt = conn.prepareStatement(empSql);
					empPstmt.setInt(1, grade);
					empRs = empPstmt.executeQuery();
				
					if (empRs.next()) {
						empList = new ArrayList<DeptEmpSalgradeVO>();
						
						do {
							empVo = DeptEmpSalgradeVO
									.builder()
									.empno(empRs.getInt("empno"))
									.dname(empRs.getString("dname"))
									.ename(empRs.getString("ename"))
									.pay(empRs.getDouble("sal"))
									.deptno(empRs.getInt("deptno"))
									.build();
							empList.add(empVo);
						} while (empRs.next());
					}//if

					map.put(vo, empList);
					
					empRs.close();
					empPstmt.close();

				} while (rs.next());

			}//if

			dispSalgrade(map);


		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rs.close();
				DBConn.close();
			} catch (SQLException e) {
			e.printStackTrace();
			}
		}

	}//main

	private static void dispSalgrade
	(LinkedHashMap<SalgradeVO, ArrayList<DeptEmpSalgradeVO>> map) {
		
		Set<Entry<SalgradeVO, ArrayList<DeptEmpSalgradeVO>>> set = map.entrySet();
		Iterator<Entry<SalgradeVO, ArrayList<DeptEmpSalgradeVO>>>  ir = set.iterator();
		while (ir.hasNext()) {
			Entry<SalgradeVO,ArrayList<DeptEmpSalgradeVO>> entry = ir.next();
			SalgradeVO vo = entry.getKey();
			ArrayList<DeptEmpSalgradeVO> list = entry.getValue();
			
			System.out.printf("%d등급	( %d~%d ) - %d명\n"
					, vo.getGrade()
					, vo.getLosal()
					, vo.getHisal()
					, vo.getCnt());
			Iterator<DeptEmpSalgradeVO> ir2 = list.iterator();
			while (ir2.hasNext()) {
				DeptEmpSalgradeVO empvo= ir2.next();
			
				System.out.printf(
						"%d\t%s\t\t%d\t%s\t%.2f\n"
						, empvo.getDeptno()
						, empvo.getDname()
						, empvo.getEmpno()
						, empvo.getEname()
						, empvo.getPay()
						);
					}
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}//

}//class
