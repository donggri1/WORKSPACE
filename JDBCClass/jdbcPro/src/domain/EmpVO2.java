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
public class EmpVO2 {
	
	private int empno;
	private String ename;
	private Date hiredate;
	private int pay;
	
	
	
}
