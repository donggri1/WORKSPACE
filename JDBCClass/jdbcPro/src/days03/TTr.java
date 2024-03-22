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

public class TTr {

	public static void main(String[] args) {

		
		String sql = "SELECT grade, losal, hisal , COUNT(*) cnt   "
				+ "		FROM salgrade s JOIN emp e ON e.sal BETWEEN s.losal AND s.hisal   "
				+ "		GROUP BY grade, losal, hisal  "
				+ "		ORDER BY grade ASC ";
		
		
		String empSql = "		SELECT d.deptno, dname, empno, ename, sal    "
				+ "		FROM dept d RIGHT JOIN emp e ON d.deptno = e.deptno               "
				+ "		                  JOIN salgrade s  ON sal BETWEEN losal AND hisal   "
				+ "		                  WHERE grade = ?   "; 
		
		
		
		PreparedStatement pstmt = null,empPstmt = null;
		Connection conn = null;
		ResultSet rs = null, empRs = null;;
		SalgradeVO vo =null;
		ArrayList<DeptEmpSalgradeVO> empList = null;
		DeptEmpSalgradeVO empVo =null;
		
		LinkedHashMap<SalgradeVO, ArrayList<DeptEmpSalgradeVO>> map = new LinkedHashMap<SalgradeVO, ArrayList<DeptEmpSalgradeVO>>();
		
		conn = DBConn.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				do {
					int grade = rs.getInt("grade");
					 vo = new SalgradeVO(
							 grade
							 , rs.getInt("losal")
							 , rs.getInt("hisal")
							 , rs.getInt("cnt"));
					
					 empPstmt = conn.prepareStatement(empSql);
					 empPstmt.setInt(1, grade);
					 empRs = empPstmt.executeQuery();
					 
					 if (empRs.next()) {
						 empList = new ArrayList<DeptEmpSalgradeVO>();
						do {
							empVo = DeptEmpSalgradeVO
									.builder()
									.deptno(empRs.getInt("deptno"))
									.ename(empRs.getString("ename"))
									.dname(empRs.getString("dname"))
									.pay(empRs.getDouble("sal"))
									.empno(empRs.getInt("empno"))
									.build();
																
							empList.add(empVo);
						} while (empRs.next());
					}
					 map.put(vo, empList);
					 
					 empRs.close();
					 empPstmt.close();
									
				} while (rs.next());
				
			}
			
			
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

	private static void dispSalgrade(LinkedHashMap<SalgradeVO, ArrayList<DeptEmpSalgradeVO>> map) {
		
		
		Set<Entry<SalgradeVO, ArrayList<DeptEmpSalgradeVO>>> set = map.entrySet();
		Iterator<Entry<SalgradeVO, ArrayList<DeptEmpSalgradeVO>>> ir =set.iterator();
		while (ir.hasNext()) {
			Entry<SalgradeVO, ArrayList<DeptEmpSalgradeVO>> entry = ir.next();
			SalgradeVO vo =entry.getKey();
			ArrayList<DeptEmpSalgradeVO> list = entry.getValue();
			
			System.out.printf("%d등급\t ( %d~ %d) - %d명\n "
								,vo.getGrade()
								,vo.getLosal()
								,vo.getHisal()
								,vo.getCnt()
					);
			
			
			Iterator<DeptEmpSalgradeVO> ir2 = list.iterator();
			while (ir2.hasNext()) {
				DeptEmpSalgradeVO empVo =  ir2.next();
				
				System.out.printf("%d\t%s\t\t%d\t%s\t%.0f\n"
						,empVo.getDeptno()
						, empVo.getDname()
						, empVo.getEmpno()
						, empVo.getEname()
						, empVo.getPay()
						
						
						
						);
				
				
			}//while
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}//class
