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

public class Ex01_03 {

	/**
	 * @MAP으로 수정
	 * 문제점 ) 부서가 존재하지 않는 king 사원처리 X
	 * 				WHERE deptno IS NULL 실행
	 * 				관련 코딩을 수정 
	 */
	public static void main(String[] args) {

       

		
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
		
		ArrayList<EmpVO> list = null;
		LinkedHashMap<DeptVO, ArrayList<EmpVO>> map = new LinkedHashMap<DeptVO, ArrayList<EmpVO>>();
		
		
		
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

//					// START
					empPstmt = conn.prepareStatement(empSql);
					empPstmt.setInt(1, deptno);
					empRs = empPstmt.executeQuery();
					if (empRs.next()) {
						list = new ArrayList<EmpVO>();
						do {
							
							evo = EmpVO.builder()
									.empno(empRs.getInt(1))
									.ename(empRs.getString(2))
									.hiredate((java.util.Date)empRs.getDate(3))
									.sal(empRs.getDouble(4))
									.build();
							

							list.add(evo); // value
						} while (empRs.next());
							
					}//if
					
					
					empRs.close();
					empPstmt.close();
					// END
					
					
				} while (deptRs.next());
				map.put(dvo, list);
			}
			
			dispEmp(map);
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
	
	private static void dispEmp(LinkedHashMap<DeptVO, ArrayList<EmpVO>> map) {
	      Set<Entry<DeptVO, ArrayList<EmpVO>>> set = map.entrySet();
	      Iterator<Entry<DeptVO, ArrayList<EmpVO>>> ir = set.iterator();
	      
	      while (ir.hasNext()) {
	         Entry<DeptVO, ArrayList<EmpVO>> entry = ir.next();
	         DeptVO dvo = entry.getKey();
	         ArrayList<EmpVO> list = entry.getValue();
	         
	         System.out.printf("%s(%d)-%d명\n"
	                , dvo.getDname(), dvo.getDeptno()
	                , dvo.getCnt());
	         
	         Iterator<EmpVO> ir2 = list.iterator();
	         while (ir2.hasNext()) {
	            EmpVO evo = (EmpVO) ir2.next();
	            System.out.printf("\t%d \t%s \t%s \t%.2f\n",
	                   evo.getEmpno()
	                   , evo.getEname()
	                   , evo.getHiredate()
	                   , evo.getSal());
	         } // while
	               
	      } // while
	      
	   }
	
}//CLASS


	
















