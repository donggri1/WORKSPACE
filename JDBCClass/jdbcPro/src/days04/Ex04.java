package days04;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

import com.util.DBConn;

import oracle.jdbc.OracleTypes;

public class Ex04 {

	public static void main(String[] args) {

		   Scanner scanner = new Scanner(System.in);
		      System.out.print("> 로그인 ID(empno),PWD(ename)을(를) 입력 ? ");
		      int id = scanner.nextInt(); // 7369,   8888
		      String pwd = scanner.next();
		      
		      Connection conn = null;
		      CallableStatement cstmt = null;
		      int check = 0;
		      
		      String sql = "{call UP_LOGIN(?,?,?)}";
		      
		      conn =  DBConn.getConnection();
		      try {
		         cstmt = conn.prepareCall(sql);
		         cstmt.setInt(1, id);  // IN
		         cstmt.setString(2, pwd);  // IN 
		         cstmt.registerOutParameter(3, OracleTypes.INTEGER);    // OUT      
		         cstmt.executeQuery();
		         
		         check = cstmt.getInt(3);
		         
		         if (check == 0) {
		            System.out.println("로그인 성공!!!");
		         } else if (check == 1) {
		            System.out.println("아이디는 존재하지만 비밀번호가 잘못되었다.");
		         } else {
		            System.out.println("아이디가 존재하지 않습니다. ");
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
 * 예) 로그인
 * 		아이디 : [hong]		empno
 * 		비밀번호 : [1234]		ename
 * 		<로그인> <회원가입>
 * 
 * 		로그인 성공
 * 		로그인 실패
 * 		
 *		[up_login] 저장프로시저 
 *		ㄴ OUT 매개변수 
 * 
*/

/*
 * 로그인 성공 								0 반환
 * 로그인 실패
 * 		1) 아이디는 존재, 비밀번호 잘못된 경우 	 1
 * 		2) 아이디가 존재하지 않는 경우			-1
 */


/*[1]
CREATE OR REPLACE PROCEDURE up_login
(
    pid IN emp.empno%TYPE
    , ppwd IN emp.ename%TYPE
    , pcheck OUT NUMBER
)
IS
BEGIN
    SELECT COUNT(*) INTO pcheck
    FROM emp
    WHERE empno = pid AND ename = ppwd;
END;
*/






