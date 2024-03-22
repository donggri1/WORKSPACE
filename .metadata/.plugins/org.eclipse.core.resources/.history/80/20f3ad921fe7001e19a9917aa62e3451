package test;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.junit.jupiter.api.Test;

import com.util.DBConn;

import days05.board.domain.BoardDTO;
import days05.board.persistence.BoardDAO;
import days05.board.persistence.BoardDAOImpl;

public class BoardDAOImplTest {


	
	@Test
	void testSelBoard() {
		
		Connection conn = DBConn.getConnection();
	
		BoardDAO dao = new BoardDAOImpl(conn);
		
		try {
			ArrayList<BoardDTO> list = dao.Select();
			System.out.println("사원수 : " + list.size()+ " 명");
			System.out.println("ttasd : " + list.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		DBConn.close();
	}
	
	
	
	

}//class
