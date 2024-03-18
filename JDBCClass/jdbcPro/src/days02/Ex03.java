package days02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import com.util.DBConn;

import domain.EmpVO;

public class Ex03 {


	public static String [] menu = {"추가","수정","삭제","조회","종료","검색"};
	public static int selectedNumber;
	public static Connection conn ;
	private static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {

		//6명
		//7명
		//[ 팀 문제 ]
		// emp 사원테이블 - 
		// 1)사원추가
		// 2)사원수정
		// 3)사원삭제
		// 4)사원검색
		// 5)사원조회

		/*
	      [실행결과]
	      1등급   (     700~1200 ) - 2명
	            20   RESEARCH   7369   SMITH   800
	            30   SALES         7900   JAMES   950
	      2등급   (   1201~1400 ) - 2명
	         30   SALES   7654   MARTIN   2650
	         30   SALES   7521   WARD      1750   
	      3등급   (   1401~2000 ) - 2명
	         30   SALES   7499   ALLEN      1900
	         30   SALES   7844   TURNER   1500
	      4등급   (   2001~3000 ) - 4명
	          10   ACCOUNTING   7782   CLARK   2450
	         20   RESEARCH   7902   FORD   3000
	         20   RESEARCH   7566   JONES   2975
	         30   SALES   7698   BLAKE   2850
	      5등급   (   3001~9999 ) - 1명   
	         10   ACCOUNTING   7839   KING   5000
		 */
		
		conn =DBConn.getConnection();
		do {
			메뉴출력();
			메뉴선택();
			메뉴처리();


		} while (true);




	}//main



	private static void 메뉴처리() {

		switch (selectedNumber) {
		case 1:	//추가
			사원추가();
			break;
		case 2://수정
			사원수정();
			break;
		case 3://삭제

			break;
		case 4://조회
			사원조회();
			break;
		case 5://종료
			프로그램종료();
			break;
		case 6://검색
			
			break;

		default:
			break;
		}

	}




	  private static void 사원추가() {


		  System.out.println(">사원번호,사원명,");
		
	}



	private static void 사원수정() {



	      System.out.print("> 수정할 직원번호 입력하세요 ? ");
	      int empno = sc.nextInt();
	      sc.nextLine();  
	      System.out.print("> 수정할 직원명 입력하세요 ? ");
	      String ename = sc.nextLine(); 
	      System.out.print("> 수정할 직무 입력하세요 ? ");
	      String job  = sc.nextLine();  
	      System.out.print("> 수정할 상사의 사원번호를 입력하세요 ? ");
	      int mgr = sc.nextInt();
	      sc.nextLine();
	      System.out.print("> 수정할 입사일을 입력하세요 ? (yyyy-MM-dd 형식으로 입력하세요) ");
	      String hiredate = sc.nextLine();

	      System.out.print("> 수정할 급여를 입력하세요 ? ");
	      int sal = sc.nextInt();
	      sc.nextLine();
	      System.out.print("> 수정할 보너스를 입력하세요 ? ");
	      int comm = sc.nextInt();
	      sc.nextLine();
	      System.out.print("> 수정할 부서번호를 입력하세요 ? ");
	      int deptno = sc.nextInt();
	      sc.nextLine(); // 개행문자 처리
	      String sql;


	      sql = String.format(
	            " UPDATE emp SET"
	                  + " ename = '%s',job = '%s', mgr = %d, hiredate = TO_DATE('%s', 'YYYY-MM-DD'), sal = %d, comm = %d, deptno = %d "
	                  + " WHERE empno = %d",  ename, job, mgr, hiredate, sal, comm, deptno, empno );

	      System.out.println(sql); //쿼리 확인

	      Statement stmt = null;
	      try {
	         //conn.setAutoCommit(true) ; 커밋 자동설정되어져있다.
	         stmt = conn.createStatement();

	         //select -> stmt.executeQuery()
	         //i,u,d -> stmt.executeUpdate()
	         int rowCount = stmt.executeUpdate(sql);

	         if (rowCount==1) {
	            System.out.println("부서 수정 성공!!!");
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            stmt.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }
	   }
	




	private static void 프로그램종료() {
		DBConn.close();
		
		System.out.println("프로그램 종료 !!!");
		System.exit(-1);
		
	}



	private static void 사원조회() {
		
		
		
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();
		Statement stmt = null;
		ResultSet rs=  null;
		String sql = "SELECT * "
				+" FROM emp";
		
		System.out.println(sql);
		int empno,deptno,mgr;
		double sal,comm;
		String ename,job;
		Date hiredate;
		
		domain.EmpVO vo = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		if (rs.next()) {
			list=new ArrayList<EmpVO>();
			do {
				empno = rs.getInt("empno");
				deptno = rs.getInt("deptno");
				sal = rs.getDouble("sal");
				comm= rs.getDouble("comm");
				mgr= rs.getInt("mgr");
				ename = rs.getString("ename");
				job = rs.getString("job");
				hiredate = rs.getDate("hiredate");
				
				vo = new domain.EmpVO(empno,ename,job,mgr,hiredate,sal,comm,deptno);
				list.add(vo);
										
			} while (rs.next());
			
			사원출력(list);
			
		}//	
					} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
			
		
	}//



	private static void 사원출력(ArrayList<EmpVO> list) {
		
		
		Iterator<EmpVO> ir = list.iterator();
		System.out.println("-".repeat(30));
		System.out.printf("empno\tename\tjob\t\tmgr\t\thiredate\tsal\tcomm\tdeptno\n");
		System.out.println("-".repeat(30));
		
		while (ir.hasNext()) {
			EmpVO vo = ir.next();
			System.out.printf("%d\t%s\t%s\t\t%d\t\t%tF\t%.0f\t%.0f\t%d\n"
					, vo.getEmpno(),vo.getEname(),vo.getJob()
					,vo.getMgr(),vo.getHiredate(),vo.getSal(),vo.getComm(),vo.getDeptno());
		}
		System.out.println("-".repeat(30));
	}



	private static void 메뉴선택() {

		try {
			selectedNumber = sc.nextInt();
			sc.nextLine();

		} catch (Exception e) {

		}


	}

	private static void 메뉴출력() {
		System.out.println("[메뉴]\n");
		for (int i = 0; i < menu.length; i++) {
			System.out.printf("%d. %s\n",i+1,menu[i]);
		}

	}

}//class
