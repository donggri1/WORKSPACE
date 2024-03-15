package domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//[V]alue[O]bject

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor  //롬복설치하기
public class DeptVO {
	
	private int deptno;
	private String dname;
	private String loc;

}
