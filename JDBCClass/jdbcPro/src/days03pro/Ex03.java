package days03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import com.util.DBConn;

import domain.SalgradeVO;

/**
 * @author kenik
 * @date 2024. 3. 19. - 오후 4:29:02
 * @subject
 * @content
 */
public class Ex03 {

	public static void main(String[] args) {
		
		String sql = 
				  "SELECT grade, losal, hisal "
				+ "     , COUNT(*) cnt "
				+ "FROM salgrade s JOIN emp e ON e.sal BETWEEN s.losal AND s.hisal "
				+ "GROUP BY grade, losal, hisal "
				+ "ORDER BY grade ASC";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		SalgradeVO vo = null;
		ArrayList<SalgradeVO> list = null;
		
		conn = DBConn.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<SalgradeVO>();
				do {
					vo = new SalgradeVO( 
								  rs.getInt("grade") 
								, rs.getInt("losal")
								, rs.getInt("hisal")
								, rs.getInt("cnt")
							);
					list.add(vo);
				} while (rs.next());
				
				dispSalgrade(list);
			} // if
		} catch (SQLException e) { 
			e.printStackTrace();
		} catch (Exception e) { 
			e.printStackTrace();
		} finally {
			try {				
				rs.close();
				pstmt.close();
				DBConn.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		} 

	} // main

	private static void dispSalgrade(ArrayList<SalgradeVO> list) {
		Iterator<SalgradeVO> ir = list.iterator();
		while (ir.hasNext()) {
			SalgradeVO vo = ir.next();
			System.out.printf("%d등급	( %d~%d ) - %d명\n"
					, vo.getGrade()
					, vo.getLosal()
					, vo.getHisal()
					, vo.getCnt());
			
		}
		
	}

} // class

/*
[실행결과]
1등급	(     700~1200 ) - 2명
   	20	RESEARCH	7369	SMITH	800
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
