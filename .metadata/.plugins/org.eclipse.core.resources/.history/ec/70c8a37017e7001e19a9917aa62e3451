package days05;

/**
 * @author LEE
 * @date 2024. 3. 20. - 오후 4:03:42
 * @subject
 * @content
 */
public class Ex01 {

	public static void main(String[] args) {
		// [1] 게시판 패키지 선언
		//days05
		//	ㄴ board
		//		ㄴ domain
		//				BoardDTO.java
		//		ㄴ persistence
		//				BoardDAO.java 인터페이스
		//				BoardDAOImpl.java 클래스 
		//		ㄴ service
		//		ㄴ controller
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
				writer VARCHAR2(20) NOT NULL,    -- 작성자 
				pwd VARCHAR2(20) NOT NULL ,
				email VARCHAR2(100) ,
				title VARCHAR2(200) NOT NULL,
				writedate DATE DEFAULT SYSDATE,
				readed NUMBER DEFAULT 0,
				tag NUMBER(1) NOT NULL,
				content CLOB 
				);
		--
		CREATE SEQUENCE SEQ_TBL_CSTVSBOARD
		NOCACHE;
		--


		-- 150 개의 게시글 임의로 추가

		BEGIN
		FOR I IN 1..150
		LOOP
		INSERT INTO TBL_CSTVSBOARD
		(seq,writer,pwd,email,title,tag,content)
		VALUES
		(SEQ_TBL_CSTVSBOARD.NEXTVAL,'홍길동'||i,'1234'
				,'hong' ||i||'@sist.com'
				,'title-'||i
				,0
				,'content-'||i);
		END LOOP;
		COMMIT;
		END;


		select *
		from TBL_CSTVSBOARD;
		--
		BEGIN
		UPDATE TBL_CSTVSBOARD
		SET writer = '김영진'
		--    WHERE MOD(seq,7)=1;
		WHERE MOD(seq,15)=2;
		END;
		--
		BEGIN
		UPDATE TBL_CSTVSBOARD
		SET title = '저장 프로시저'
		--    WHERE MOD(seq,7)=1;
		WHERE MOD(seq,9) IN (3,5);
		END;


		 */		



	}//main

}//class
