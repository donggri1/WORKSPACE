package days04;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.DBConn;

import domain.DeptVO;
import oracle.jdbc.OracleTypes;

/**
 * @author LEE
 * @date 2024. 3. 20. - 오후 2:17:42
 * @subject	dept - update 부서 추가
 * @content	up_updatedept
 */
public class Ex05_04 {

	public static void main(String[] args) {

		String sql = "{call up_deletedept(?)}";
//		String sql = "{call up_insertdept(?,pdname=>?}";
//		String sql = "{call up_insertdept(ploc=>?}";

		Connection conn = null;
		CallableStatement cstmt = null;
		int rowCount = 0;
		
		int pdeptno = 50;

		
		conn =  DBConn.getConnection();
		try {
			cstmt = conn.prepareCall(sql);
			cstmt.setInt(1,pdeptno);      

			rowCount = cstmt.executeUpdate();

			if (rowCount==1) {
				System.out.println("부서삭제 성공");
				
			}else {
				System.out.println("부서삭제 실패");
			}

		} catch (SQLException e) { 
			e.printStackTrace();
		} catch (Exception e) { 
			e.printStackTrace();
		} finally {
			try {
				cstmt.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		}


		DBConn.close();
		System.out.println(" end ");





	}//main

}//class

/*
CREATE OR REPLACE PROCEDURE up_deletedept
(
    pdeptno IN dept.deptno%TYPE

)
IS
BEGIN
    
    DELETE dept WHERE deptno =pdeptno;
    
    COMMIT;
    
END;
    
END;
 */