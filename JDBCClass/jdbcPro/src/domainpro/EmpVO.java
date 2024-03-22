package domain;

import java.time.LocalDateTime;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// [V]alue[O]bject
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class EmpVO {
	
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	//private String hiredate; 
	//private Date hiredate;
	private LocalDateTime hiredate;
	
	private double sal;
	private double comm;
	private int deptno;

}
