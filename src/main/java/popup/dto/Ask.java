package popup.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString 
public class Ask {
	private int askNum;
	private String askEmail;
	private String askTitle;
	private String askBody;
	private int askCheck;
	private Date askCreate;
}
