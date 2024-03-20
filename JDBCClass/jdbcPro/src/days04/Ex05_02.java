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
 * @subject	dept - insert 부서 추가
 * @content	up_insertdept
 */
public class Ex05_02 {

	public static void main(String[] args) {

		String sql = "{call up_insertdept(?,?)}";
//		String sql = "{call up_insertdept(pdname=>?}";
//		String sql = "{call up_insertdept(ploc=>?}";

		Connection conn = null;
		CallableStatement cstmt = null;
		int rowCount = 0;
		
		String pdname = "QC",ploc = "SEOUL";
		
		conn =  DBConn.getConnection();
		try {
			cstmt = conn.prepareCall(sql);
			cstmt.setString(1,pdname);      
			cstmt.setString(2,ploc);      
			rowCount = cstmt.executeUpdate();

			if (rowCount==1) {
				System.out.println("부서추가 성공");
				
			}else {
				System.out.println("부서추가 실패");
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

CREATE SEQUENCE seq_deptno
INCREMENT BY 10 
START WITH 50
NOCACHE;
--
CREATE OR REPLACE PROCEDURE up_insertdept
(
    pdname dept.dname%TYPE :=NULL
    ,ploc dept.loc%TYPE :=NULL
    
    )
IS
BEGIN
    INSERT INTO dept(deptno,dname,loc)
    VALUES (seq_deptno.NEXTVAL,pdname,ploc  );
    COMMIT;

END;
 */