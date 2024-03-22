package days05;

import java.sql.Connection;

import com.util.DBConn;

import days05.board.controller.BoardController;
import days05.board.persistence.BoardDAO;
import days05.board.persistence.BoardDAOImpl;
import days05.board.service.BoardService;

/**
 * @author kenik
 * @date 2024. 3. 20. - 오후 4:03:15
 * @subject
 * @content
 */
public class Ex02 {

	public static void main(String[] args) {
		// [ 페이징 처리 ] 
		// 1) 현재 페이지 번호
		// 2) 한 페이지에 출력할 게시글을 수 출력
		// 3) 페이징 블럭개수 ?
		
		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAOImpl(conn);
		BoardService service = new BoardService(dao);
		BoardController controller = new BoardController(service);
		
		controller.boardStart();
		
	} // main

} // class







