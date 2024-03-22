package days03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import com.util.DBConn;

import domain.DeptVO;
import domain.EmpVO;

/**
 * @author user
 * @date 2024. 3. 18. 오후 4:49:26
 * @subject
 * @contents
 */
public class Team {
   public static Connection conn;
   public static Scanner sc = new Scanner(System.in);
   public static ArrayList<EmpVO> al = new ArrayList<EmpVO>();
   public static void main(String[] args) throws SQLException {
      conn = DBConn.getConnection();
//      사원삭제();
//      사원추가(); //이시은
      System.out.println("계속하시려면 엔터를 누르세요");
      try {
         System.in.read();
         System.in.skip(System.in.available());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      사원조회();
      System.out.println("계속하시려면 엔터를 누르세요");
      try {
         System.in.read();
         System.in.skip(System.in.available());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      사원수정();
      
      System.out.println("계속하시려면 엔터를 누르세요");
      try {
         System.in.read();
         System.in.skip(System.in.available());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      // 6명 , 7명인 조 
      //[팀문제]
      //emp 사원테이블  -
      //1) 사원추가 쿼리
      //2) 사원정보수정
      //3) 사원삭제 
      //4) 사원검색
      //5) 사원조회
      사원검색(); // 권맑음
      System.out.println("계속하시려면 엔터를 누르세요");
      try {
         System.in.read();
         System.in.skip(System.in.available());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
      사원조회(); //이동찬
      System.out.println("계속하시려면 엔터를 누르세요");
      try {
         System.in.read();
         System.in.skip(System.in.available());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      사원삭제(); //류영은
      
      DBConn.close();
      System.exit(-1);
      
   }

   /*private static void 직원수정() {
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
        sc.nextLine(); 
   
        String sql = null;
   
   
        sql = String.format(
              " UPDATE emp SET"
                    + " ename = '%s',job = '%s', mgr = %d, hiredate = TO_DATE('%s', 'YYYY-MM-DD'), sal = %d, comm = %d, deptno = %d "
                    + " WHERE empno = %d",  ename, job, mgr, hiredate, sal, comm, deptno, empno );
   
        System.out.println(sql); 
   
        Statement stmt = null;
        try {
   
           stmt = conn.createStatement();
   
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
   */
   private static void 사원수정() {
      System.out.println("수정할 사원의 사원번호를 입력하세요");
      int empno =sc.nextInt();
      sc.nextLine();
   
      System.out.println("수정할 사원이름을 입력하세요");
      String b = sc.nextLine();
     
     
      System.out.println("수정할 사원의 직업을 입력하세요");
      String job =sc.nextLine();
     
      
      System.out.println("수정할 사원의 매니저번호를 입력하세요");
      String MGR =sc.nextLine();
   
      
      
      
      System.out.println("수정할 사원의 고용일자를 입력하세요");
      String hire =sc.nextLine();
    
     
      System.out.println("수정할 사원의 급여를 입력하세요");
      String sal =sc.nextLine();
     
      
   
      
      System.out.println("수정할 사원의 성과급을 입력하세요");
      String comm =sc.nextLine();
   
     
      
      System.out.println("수정할 사원의 부서번호를 입력하세요");
      String deptno =sc.nextLine();
  
    
      
 
      String sql = String.format("update emp set %s %s  %s  %s %s  %s %s  where empno = %d",(b.equals("")?"ename=ename":"ename='"+b+"'"),(job.equals("")?"":",job= '"+job+"'"),(MGR.equals("")?"":",mgr='"+MGR+"'"),(hire.equals("")?"":",hiredate = '"+hire+"'"),(sal.equals("")?"":",sal= '"+sal+"'"),(comm.equals("")?"":",comm = '"+comm+"'"),(deptno.equals("")?"":",deptno= '"+deptno+"'"),empno );
      Statement st = null ;
      try {
         st = conn.createStatement();
         int c =st.executeUpdate(sql);
         if (c==1) {
            System.out.println("사원정보 수정 성공");
         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
      
   }
   private static void 사원조회() {
      int empno;
      String ename;
      String job;
      int mgr;
      String hire;
      int sal;
      int comm;
      int deptno;
      ResultSet rs ;
      String sql = "select * from emp";
      PreparedStatement pst = null ;
      try {
//         st = conn.createStatement();
    	   pst = conn.prepareStatement(sql);
    	   rs = pst.executeQuery();
//         rs = st.executeQuery(sql);
         while (rs.next()) {
            empno = rs.getInt(1);
            ename = rs.getString(2);
            job = rs.getString(3);
            mgr = rs.getInt(4);
            hire = rs.getString(5);
            sal = rs.getInt(6);
            comm = rs.getInt(7);
            deptno = rs.getInt(8);
            EmpVO ev = new EmpVO(empno,ename,job,mgr,hire,sal,comm,deptno);
            al.add(ev);
         }
         정보출력(al);
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
   }

//   private static void 사원조회() {
//      int empno;
//      String ename;
//      String job;
//      int mgr;
//      String hire;
//      int sal;
//      int comm;
//      int deptno;
//      ResultSet rs ;
//      String sql = "select * from emp";
//      Statement st = null ;
//      try {
//         st = conn.createStatement();
//         rs = st.executeQuery(sql);
//         while (rs.next()) {
//            empno = rs.getInt(1);
//            ename = rs.getString(2);
//            job = rs.getString(3);
//            mgr = rs.getInt(4);
//            hire = rs.getString(5);
//            sal = rs.getInt(6);
//            comm = rs.getInt(7);
//            deptno = rs.getInt(8);
//            EmpVO ev = new EmpVO(empno,ename,job,mgr,hire,sal,comm,deptno);
//            al.add(ev);
//         }
//         정보출력(al);
//      } catch (SQLException e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//      }
//      
//   }
   private static void 사원검색() {
      int empno;
      String ename;
      String job;
      int mgr;
      String hire;
      int sal;
      int comm;
      int deptno;
      al.clear();
      int searchCondition = 1;
      String searchWord = null;
      
      ArrayList<EmpVO> list = null;
      
      EmpVO vo = null;
      
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      System.out.println("검색할 조건을 입력하세요> (1=>사원번호,2=>사원이름,3=>직업,4=>상사번호,"
      		+ "6=>날짜,7=>기본급,8=>보너스,9=>부서번호)");
      String sql = "SELECT *"
      		+ "FROM emp"
      		+ "WHERE";
      
      if (searchCondition==1) {
		sql+= " empno = ? ";
	} else if(searchCondition==2){
		sql+= " REGEXP_LIKE( ename , ?, 'i') ";
	}else if (searchCondition==3) {
		sql+= " REGEXP_LIKE( job , ? , 'i' ) ";
	}else if (searchCondition==4) {
		sql+= " mgr = ? ";
	}else if (searchCondition==5) {
		sql+= " hiredate = ? ";
	}else if (searchCondition==6) {
		sql+= " sal = ? ";
	}else if (searchCondition==7) {
		sql+= " comm = ? ";
	}else if (searchCondition==8) {
		sql+= " deptno = ? ";
	}       
      
      System.out.println(sql);
      try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if (searchCondition ==1) {
			pstmt.setInt(1, Integer.parseInt(sql) );
		} else {

		}
		
		
		
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			pstmt.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
      
      
      
      
      
      
      
   }//
   private static void 사원삭제() {
       
         System.out.print("> 삭제할 사원번호를 입력 ? ");
         int empno = sc.nextInt();
        
        String sql = String.format(
                   "DELETE FROM emp "
                + " WHERE empno = %d", empno);
        
        System.out.println( sql );
        
        
        Statement stmt = null;
        
        try {
           stmt = conn.createStatement();
           int rowCount = stmt.executeUpdate(sql);
           
           if( rowCount == 1  ) {
              System.out.println( " 사원 삭제 성공!!!");
           }
           
        }catch (SQLException e) {
           e.printStackTrace();
        }
        
     }
   private static void 사원추가() {
         System.out.println("> 사원번호, 사원명, 직업, MGR, 고용일자, SAL, COMM, 부서번호 입력하세요? ");
         int empno = sc.nextInt();
         String ename = sc.next();
         String job = sc.next();
         int mgr = sc.nextInt();
         String hiredate = sc.next();
         int sal = sc.nextInt();
         int comm = sc.nextInt();
         int deptno = sc.nextInt();
        
         
         String sql = String.format("INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) "
               + " VALUES (%d,'%s','%s', %d, '%s', %d, %d, %d)", empno, ename.toUpperCase(), job.toUpperCase(), mgr, hiredate, sal, comm, deptno);
         
         Statement stmt = null;
         
         try {
            stmt = conn.createStatement();
            int rowCount = stmt.executeUpdate(sql);

            if (rowCount ==1) {
               System.out.println(" 부서 추가 성공!!! ");
            }

            // COMMIT or ROLLBACK 
         } catch (SQLException e) {
            e.printStackTrace();
         }finally {
            try {
               stmt.close();
            } catch (SQLException e) {
               e.printStackTrace();
            }
         }
         
      }

   
   

}