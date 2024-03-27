package domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Builder 
@AllArgsConstructor
@NoArgsConstructor
@Data
public class DeptEmpSalgradeVO {

	


		 
		private int empno;
		private String dname;
		private String ename;
		private Date hiredate; //java.util.Date;
		private double pay;
		private int grade;
		private int deptno;
		



}
