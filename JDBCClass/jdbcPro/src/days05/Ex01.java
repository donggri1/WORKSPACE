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
public class Ex01 {

	public static void main(String[] args) {
		// [1] 게시판 패키지 선언
		// days05
		//    ㄴ board
		//          ㄴ domain      - DTO, VO
		//                    BoardDTO.java
		//          ㄴ persistence - DAO
		//                    BoardDAO.java 인터페이스
		//                    BoardDAOImpl.java 클래스
		//          ㄴ service     -
		//          ㄴ controller  -
		
		// [2] http://taeyo.net/Columns/View.aspx?SEQ=110&PSEQ=10&IDX=1
		/*
		create table cstVSBoard (
				  seq int identity (1, 1) not null primary key clustered,
				  writer varchar (20) not null ,
				  pwd varchar (20) not null ,
				  email varchar (100) null ,
				  title varchar (200) not null ,
				  writedate smalldatetime not null default (getdate()),
				  readed int not null default (0),
				  mode tinyint not null ,
				  content text null
				)
				
		CREATE TABLE tbl_cstVSBoard (
		  seq NUMBER NOT NULL PRIMARY KEY , -- 글 일련번호(PK)
		  writer VARCHAR2(20) NOT NULL , -- 작성자
		  pwd VARCHAR2(20) NOT NULL ,  -- 비밀번호
		  email VARCHAR2(100) ,
		  title VARCHAR2(200) NOT NULL ,
		  writedate DATE DEFAULT SYSDATE,
		  readed NUMBER DEFAULT 0,
		  tag NUMBER(1) NOT NULL ,
		  content CLOB
		);
		-- Table TBL_CSTVSBOARD이(가) 생성되었습니다.
		CREATE SEQUENCE SEQ_TBL_CSTVSBOARD
		NOCACHE;
		-- Sequence SEQ_TBL_CSTVSBOARD이(가) 생성되었습니다.	
		
			-- 150 개의 게시글의 임의로 추가
BEGIN
  FOR i IN 1.. 150
  LOOP
     INSERT INTO TBL_CSTVSBOARD 
     ( seq,  writer, pwd, email, title, tag,  content) 
     VALUES 
     ( SEQ_TBL_CSTVSBOARD.NEXTVAL, '홍길동' || i, '1234'
     , 'hong' || i || '@sist.com'
     , 'title-' || i
     , 0
     , 'content-' || i );
  END LOOP;
  COMMIT;
END;

SELECT *
FROM TBL_CSTVSBOARD;
--
BEGIN
  UPDATE TBL_CSTVSBOARD
  SET writer = '김영진'
  -- WHERE MOD(seq, 7) = 1;
  WHERE MOD(seq, 15) = 2;
  COMMIT;
END;

--
BEGIN
  UPDATE TBL_CSTVSBOARD
  SET title = '저장 프로시저' 
  WHERE MOD(seq, 9) IN ( 3,5 );
  COMMIT;
END;
        */
		
		
		/*
		 *                                  BoardDTO 
		 * 사용자(user) -> BoardController.java -> BoardService.java
		 *                 *[게시글 쓰기] : 작성     ㄴint insertService()  BoardDTO
		 *                     return int ?  
		 *                   수정                          1) DB처리       -> BoardDAOImpl.java    ->  오라클 DB서버
		 *                   삭제                          2) 로그기록            ㄴint insert(dto)		               
		 *                   상세보기                      3)    ?
		 *                   BoardDAO 인터페이스
		 *                   	ㄴ
		 *                   	ㄴ
		 *                   
		 *                   목록보기()                    ArrayList<> selectSerive()      ->  ArrayList<> select();
		 *                   메뉴 선택                    1+2+3) 논리적인처리작업
		 *                                                  커밋,롤백(트랜잭션처리)
		 * 
		 * */
		
		// 목록, 쓰기, 삭제, 수정, [검색]
		// BoardDAO, BoardDAOImpl, BoardService <- BoardController
		Connection conn = DBConn.getConnection();
		BoardDAO dao = new BoardDAOImpl(conn);
		BoardService service = new BoardService(dao);
		BoardController controller = new BoardController(service);
		
		controller.boardStart();
		
	} // main

} // class







