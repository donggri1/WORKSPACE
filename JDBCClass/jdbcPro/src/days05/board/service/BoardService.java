package days05.board.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import days05.board.domain.BoardDTO;
import days05.board.persistence.BoardDAO;
import days05.board.persistence.BoardDAOImpl;import oracle.jdbc.dcn.RowChangeDescription;

public class BoardService {

	private BoardDAO dao = null;

	// 1. 생성자를 통한 DI
	public BoardService(BoardDAO dao) {
		this.dao = dao;
	}

	// 2. Setter를 통한 DI
	public void setDao(BoardDAO dao) {
		this.dao = dao;
	} 

	public BoardDAO getDao() {
		return dao;
	}


	// 1. 게시글 목록 조회 서비스
	public ArrayList<BoardDTO> selectService(){		
		ArrayList<BoardDTO> list = null;

		// 1. DB 처리
		try {
			list = this.getDao().select();
		} catch (SQLException e) { 
			e.printStackTrace(); // BoardDAO.selectService() 예외 발생..
		}

		// 2. 로그 기록
		System.out.println("> 게시글 목록 조회 : 로그 기록 작업...");

		return list;
	}

	// 2. 게시글 쓰기 서비스
	public int insertService(BoardDTO dto){		
		int rowCount = 0;

		// 1. DB 처리
		try {
			rowCount = this.getDao().insert(dto);
		} catch (SQLException e) { 
			e.printStackTrace(); // BoardDAO.selectService() 예외 발생..
		}

		// 2. 로그 기록
		System.out.println("> 게시글 쓰기 : 로그 기록 작업...");

		return rowCount;
	}


	//3 게시글 상세 보기
	public BoardDTO viewService(long seq){
		BoardDTO dto = null;
		BoardDAOImpl dao2 = (BoardDAOImpl) this.getDao();
		Connection conn =  dao2.getConn(); 

		try {

			conn.setAutoCommit(false); // 트랜잭션
			// 1. 조회수 증가
			getDao().increaseReaded(seq);

			// 2. 해당 게시글 얻어오기
			dto = this.getDao().view(seq);
			// 3. 로그 기록
			System.out.println("> 게시글 보기 : 로그 기록 작업...");

			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return dto;
	}	

	// 4. 게시글 삭제 서비스



	public int deleteService(long seq) {
		int rowCount = 0;
		//1.DB처리
		try {
			rowCount = this.getDao().delete(seq);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//2. 로그기록
		System.out.println("> 게시글 삭제 : 로그 기록 작업...");

		return rowCount;

	}
	//5. 게시글 수정 서비스
	public int updateService(BoardDTO dto) {
		int rowCount = 0;

		try {
			rowCount = this.getDao().update(dto);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("> 게시글 수정 :로그 기록작업");

		return rowCount;
	}

	// 6. 게시글 검색 서비스
	public ArrayList<BoardDTO> searchService
	(int searchCondition, String searchWord) {
		ArrayList<BoardDTO> list = null;

		// 1. DB 처리
		try {
			list = this.dao.search(searchCondition,searchWord);
		} catch (SQLException e) { 
			e.printStackTrace(); // BoardDAO.selectService() 예외 발생..
		}


		// 2. 로그 기록
		System.out.println("> 게시글 검색 조회 : 로그 기록 작업...");

		return list;
	}

	public ArrayList<BoardDTO> selectService(int currentPage, int numberPerPage) {
		ArrayList<BoardDTO> list = null;

		// 1. DB 처리
		try {
			list = this.getDao().select(currentPage,numberPerPage);
		} catch (SQLException e) { 
			e.printStackTrace(); // BoardDAO.selectService() 예외 발생..
		}

		// 2. 로그 기록
		System.out.println("> 게시글 목록 조회 : 로그 기록 작업...");

		return list;
	}

	//"[1 start ] 2 3 4 5 6 7 8  페이징 처리 문자열로 반환하는 메서드
	public String pageService(int currentPage,int numberPerPage,int numberOfPageBlock ) {
		String pageblock ="\t\t\t";

		int totalPages = 0;

		try {
			totalPages = this.dao.getTotalPages(numberPerPage);

			int start= (currentPage-1)/numberOfPageBlock*numberPerPage+1;
			int end = start+numberOfPageBlock-1;

			if(end>totalPages) end = totalPages;


			if(start!=1) pageblock+=" < ";
			for (int i = start; i <= end; i++) {
				pageblock += String.format(i==currentPage?"[%d] ":"%d ", i);			
			}
			if (end !=totalPages) System.out.println(" > ");

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pageblock;
	}
	//6-2 페이징처리
	public ArrayList<BoardDTO> searchService(int searchCondition, String searchWord
			, int currentPage,int numberPerPage) {

		ArrayList<BoardDTO> list = null;


		try {
			list = this.dao.search(
					searchCondition,searchWord
					,currentPage,numberPerPage
					);
		} catch (SQLException e) { 
			e.printStackTrace(); 
		}

		System.out.println("> 게시글 검색 +페이징 처리 O: 로그 기록 작업...");

		return list;
	}



	public String pageService(int currentPage, int numberPerPage, int numberOfPageBlock, int searchCondition,
			String searchWord) {
		String pageblock ="\t\t\t";

		int totalPages = 0;

		try {
			totalPages = this.dao.getTotalPages(numberPerPage
					,searchCondition,searchWord);

			int start= (currentPage-1)/numberOfPageBlock*numberPerPage+1;
			int end = start+numberOfPageBlock-1;

			if(end>totalPages) end = totalPages;


			if(start!=1) pageblock+=" < ";
			for (int i = start; i <= end; i++) {
				pageblock += String.format(i==currentPage?"[%d] ":"%d ", i);			
			}
			if (end !=totalPages) System.out.println(" > ");

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pageblock;
	}





}//class













