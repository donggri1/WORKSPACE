package days05.board.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BoardDTO {
	
	private long seq;
	private String writer;
	private String pwd;
	private String email;
	private String title;
	private Date writedate;
	private int readed;
	private int tag;
	private String content;
	

<<<<<<< HEAD
=======
	        
	
	
>>>>>>> f12e1cdf3065d30d661772fd4c6450f9aacf0bcb

}
