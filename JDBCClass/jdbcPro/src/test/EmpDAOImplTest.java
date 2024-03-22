package test;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.jupiter.api.Test;

import com.util.DBConn;

import domain.EmpVO;
import persistence.EmpDAO;
import persistence.EmpDAOImpl;

class EmpDAOImplTest {

	
	/*
	@Test
	void test() {
		Connection conn = DBConn.getConnection();
		EmpDAO dao = new EmpDAOImpl(conn);
		
		ArrayList<EmpVO> list = dao.getEmpSelect();
		System.out.println("사원수 : " + list.size() + "명");
		
		DBConn.close();
		
		
	}
*/
	@Test
	void testAddEmp() {
		Connection conn = DBConn.getConnection();
		EmpDAO dao = new EmpDAOImpl(conn);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	      Date hiredate = null;
	      try {
	         hiredate = sdf.parse("2017-01-01");
	      } catch (ParseException e) { 
	         e.printStackTrace();
	      }
	      
	      EmpVO vo = new EmpVO( 9999 , "동영", "SALES", 7369, hiredate, 1000.0, 100.0, 40);
		
//	      EmpVO vo = new EmpVO(9999, "ename", "job", 9837
//	    		  , new java.util.Date(java.sql.Date.valueOf("2024-11-01").getTime()), 9000.0, 900.0, 30);
		int rowCount = dao.addEmp(null);

		if(rowCount==1)System.out.println("사원 추가 성공!!!");
		
		
		DBConn.close();
		
		
	}
	
	
}
