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
import domain.EmpVO2;

public class Tr {

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
       

		
		String sql = "SELECT dname,d.deptno,COUNT(*)  "
				+ "FROM dept d RIGHT OUTER JOIN emp e ON e.deptno = d.deptno  "
				+ "GROUP BY dname,d.deptno "
				+ "ORDER BY d.deptno ASC ";
		String empSql = "SELECT empno,ename,hiredate,sal+NVL(comm,0) pay "
				+ "FROM emp "
				+ "WHERE deptno = ? ";
		
		
		
		
		PreparedStatement pstmt =null , empPstmt= null;;
		Connection conn = null;
		ResultSet rs= null, empRs= null;;
		DeptEmpVO devo = null;
		ArrayList<EmpVO2> aevo = new ArrayList<EmpVO2>();
		
		LinkedHashMap<DeptEmpVO, ArrayList<EmpVO2>> map = new LinkedHashMap<DeptEmpVO, ArrayList<EmpVO2>>();
		EmpVO2 evo = null; 
		conn = DBConn.getConnection();
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(sql);
			
			if (rs.next()) {
				do {
					int deptno = rs.getInt("deptno");
					devo = new DeptEmpVO(rs.getString("dname")
							, deptno
							, rs.getInt(3));
					
					empPstmt = conn.prepareStatement(empSql);
					empPstmt.setInt(1, deptno);
				
					empRs = empPstmt.executeQuery();
					
					if (empRs.next()) {
						
						do {
							evo= new EmpVO2(
										empRs.getInt("empno")
										,empRs.getString("ename")
										,empRs.getDate("hiredate")
										,empRs.getInt("pay")
										);
							System.out.println(empSql);
							aevo.add(evo);
						} while (empRs.next());
					}//if
					
					map.put(devo, aevo);
					
				} while (rs.next());
			}
			
			disp(map);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	}//main

	private static void disp(LinkedHashMap<DeptEmpVO, ArrayList<EmpVO2>> map) {
		
		Set<Entry<DeptEmpVO, ArrayList<EmpVO2>>> entry = map.entrySet();
		Iterator<Entry<DeptEmpVO, ArrayList<EmpVO2>>>  ir = entry.iterator();
		while (ir.hasNext()) {
			Entry<DeptEmpVO, ArrayList<EmpVO2>> list = ir.next();
			DeptEmpVO dvo =list.getKey();
			ArrayList<EmpVO2> aevo = list.getValue();
			System.out.printf( "%s(%d)-%d명\n"
					, dvo.getDname()
					,dvo.getDeptno()
					,dvo.getCount());
			
			Iterator<EmpVO2> ir2 = aevo.iterator();
			while (ir2.hasNext()) {
				EmpVO2 evo = ir2.next();
				System.out.printf("%d\t%s\t%tF\t%d\n"
						,evo.getEmpno()
						,evo.getEname()
						,evo.getHiredate()
						,evo.getPay());
			}
			
			
			
		}//while
		
		
	}

}//class


















