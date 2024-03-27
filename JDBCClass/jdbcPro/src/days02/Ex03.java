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
			사원삭제();
			break;
		case 4://조회
			사원조회();
			break;
		case 5://종료
			프로그램종료();
			break;
		case 6://검색
			사원검색();
			break;

		default:
			break;
		}

	}




	private static void 사원검색() {
		Statement stmt = null;
		ResultSet rs = null;
		int searchCondition = 1;
		String searcWord = null;
		System.out.println(">검색조건,검색어 입력하세요");
		searchCondition = sc.nextInt();
		sc.nextLine();
		searcWord = sc.nextLine();
		
		int empno;
		String ename;
		String job;
		int mgr;
		String hiredate = null;
		int sal;
		int comm;
		int deptno;
		
		ArrayList<EmpVO> list = null;
		String sql =  "SELECT * "
					+" FROM emp "
					+" WHERE ";
		
		
		if (searchCondition==1) {
			sql += String.format("empno IN (%s) ",searcWord);
		} else if(searchCondition==2){
			sql += String.format(
					" REGEXP_LIKE(ename,'%1$s','i')"
					,searcWord.trim());
		} else if(searchCondition==3) {
			sql +=String.format(
					" REGEXP_LIKE( job ,'%1$s','i')",searcWord.trim()
					);
		} else if(searchCondition==4) {
			sql += String.format("mgr IN (%s) ",searcWord);
		} else if (searchCondition==5) {
			System.out.println("YYYY-MM-DD에맞춰서 입력하시오");
			sql +=String.format(
					" hiredate ='%s'",hiredate
					);
		}else if (searchCondition==6) {
			sql += String.format("sal = %d",searcWord
					);
		}else if (searchCondition==7) {
			sql += String.format("comm= %d",searcWord);
		}else {
			sql+= String.format("deptno= %s",searcWord);
		}
		System.out.println(sql);// 테스트
		
		EmpVO vo =null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			
			if (rs.next()) {
				list = new ArrayList<EmpVO>();
				do {
					
					 empno = rs.getInt("empno");
					 ename =rs.getString("ename");
					 job = rs.getString("job");
					 mgr = rs.getInt("mgr");
					 hiredate = rs.getString("hiredate");
					 sal = rs.getInt("sal");
					 comm = rs.getInt("comm");
					 deptno = rs.getInt("deptno");
					list.add(vo);
					
					
				} while (rs.next());
				사원출력(list);
				
				
			}
			
			
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


	}//사원검색






	private static void 사원삭제() {
		System.out.println("삭제할 사원번호 입력 ? "); 
		int empno = sc.nextInt();
		String sql  =String.format( "delete emp"
				+"WHERE %d",empno);
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			int rowCount = stmt.executeUpdate(sql);

			if (rowCount==1) {
				System.out.println("삭제 성공 ");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}




	}



	private static void 사원추가() {

		Statement stmt = null;
		System.out.println(">사원번호, 사원명, 직업, MGR, 고용일자, SAL, COMM, 부서번호 입력하세요? ");

		int empno = sc.nextInt();
		String ename = sc.next();
		String job = sc.next();
		int mgr = sc.nextInt();
		String hiredate = sc.next();
		int sal = sc.nextInt();
		int comm = sc.nextInt();
		int deptno = sc.nextInt();



		String sql  =String.format( "INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)"
				+ "VALUES(%d,'%s','%s', %d, '%s', %d, %d, %d)", empno, ename.toUpperCase(), job.toUpperCase(), mgr, hiredate, sal, comm, deptno);
		try {
			stmt = conn.createStatement();
			int rowCount  = stmt.executeUpdate(sql);

			if (rowCount ==1) {
				System.out.println("사원 추가 성공 !!");				
			}



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}


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
		String mgr = sc.nextLine();

		
		System.out.print("> 수정할 입사일을 입력하세요 ? (yyyy-MM-dd 형식으로 입력하세요) ");
		String hiredate = sc.nextLine();

		System.out.print("> 수정할 급여를 입력하세요 ? ");
		String sal = sc.nextLine();
		
		
		System.out.print("> 수정할 보너스를 입력하세요 ? ");
		String comm = sc.nextLine();
		
		
		
		System.out.print("> 수정할 부서번호를 입력하세요 ? ");
		String deptno = sc.nextLine();
		
		
		
		String sql;


		sql = String.format(
				" UPDATE emp SET"
						+ " ename = '%s',job = '%s', mgr = %d, hiredate = TO_DATE('%s', 'YYYY-MM-DD')"
						+ ", sal = %d, comm = %d, deptno = %d "
						+ " WHERE empno = %d",  ename, job, mgr, hiredate, sal, comm, deptno, empno );

		System.out.println(sql); 

		Statement stmt = null;
		try {
			
			stmt = conn.createStatement();

			int rowCount = stmt.executeUpdate(sql);

			if (rowCount==1) {
				System.out.println("사원 수정 성공!!!");
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
