package days04;

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

import domain.DeptEmpVO;
import domain.DeptVO;
import domain.EmpVO;
import domain.EmpVO2;

public class Ex01_02 {

	public static void main(String[] args) {
		/*
		[실행결과]
ACCOUNTING(10)-3명
  empno ename hiredate pay
  empno ename hiredate pay
  empno ename hiredate pay
RESEARCH(20)-3명
  empno ename hiredate pay
  empno ename hiredate pay
  empno ename hiredate pay
SALES(30)-6명
  empno ename hiredate pay
  empno ename hiredate pay
  empno ename hiredate pay
  empno ename hiredate pay
  empno ename hiredate pay
  empno ename hiredate pay
OPERATIONS(40)-1명
  empno ename hiredate pay 
NULL - 1명
  empno ename hiredate pay
       */
       

		
		String deptSql = "SELECT dname,d.deptno,COUNT(*) cnt "
				+ "FROM dept d RIGHT OUTER JOIN emp e ON e.deptno = d.deptno  "
				+ "GROUP BY dname,d.deptno "
				+ "ORDER BY d.deptno ASC ";
		
		String empSql = "SELECT empno,ename,hiredate,sal+NVL(comm,0) pay "
				+ "FROM emp "
				+ "WHERE deptno = ?  ";
//		WHERE IS null
		
		
		
		PreparedStatement empPstmt =null , deptPstmt= null;;
		Connection conn = null;
		ResultSet empRs= null, deptRs= null;;
		DeptVO dvo = null;
		EmpVO evo = null;
		
		conn = DBConn.getConnection();
		
//		ArrayList<EmpVO2> aevo = null;
//		LinkedHashMap<DeptEmpVO, ArrayList<EmpVO2>> map = null;
//		EmpVO2 evo = null; 
		
		conn = DBConn.getConnection();
		try {
			deptPstmt = conn.prepareStatement(deptSql);
			deptRs = deptPstmt.executeQuery();
			
			if (deptRs.next()) {
				
				do {
					int deptno = deptRs.getInt("deptno");
					dvo = DeptVO.builder()
							.deptno(deptno)
							.dname(deptRs.getString("dname"))
							.cnt(deptRs.getInt("cnt"))
							.build();
					System.out.printf("%s(%d)-%d명\n"
							,dvo.getDname()
							,dvo.getDeptno()
							,dvo.getCnt());
					// START
					empPstmt = conn.prepareStatement(empSql);
					empPstmt.setInt(1, deptno);
					empRs = empPstmt.executeQuery();
					if (empRs.next()) {
						do {
							
							evo = EmpVO.builder()
									.empno(empRs.getInt(1))
									.ename(empRs.getString(2))
									.hiredate((java.util.Date)empRs.getDate(3))
									.sal(empRs.getDouble(4))
									.build();
							
							System.out.printf("\t%d \t%s \t%s \t%.2f\n"
									,evo.getEmpno()
									,evo.getEname()
									,evo.getHiredate()
									,evo.getSal());
						} while (empRs.next());
						
					}//if
					
					
					empRs.close();
					empPstmt.close();
					// END
					
					
				} while (deptRs.next());
				
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			try {
				deptRs.close();
				deptPstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		DBConn.close();
	}//main

}//class


















