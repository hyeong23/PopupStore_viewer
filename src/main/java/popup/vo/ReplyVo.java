package popup.vo;

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
public class ReplyVo {
	private int replyNum;
	private int memberNum;
	private int storeNum;
	private String reply;
	private Date replyCreate;
	private Date replyUpdate;
	private String memberNickname;
	private String memberCompanyName;
}
