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


	/*
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
	*/
	/*
	@Test
	void testInsert() {
		BoardDTO dto = BoardDTO.builder()
				.title("첫 번째 게시글")
				.writer("김영진")
				.pwd("1234")
				.email("kim@ss.com")
				.tag(0)
				.content("첫 번째 게시글 내용")
				.build();
		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAOImpl(conn);
		int rowCount =0;
		
		try {
			rowCount =  dao.insert(dto);
			if (rowCount ==1 ) {
				System.out.println("게시글 작성 완료");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBConn.close();	
		}
		
		System.out.println(" end ");
	}
	*/
	
	

}//class
