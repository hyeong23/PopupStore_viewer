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
public class Member {
	private int memberNum;
	private String memberId;
	private String memberPw;
	private String memberNickname;
	private String memberEmail;
	private int memberType;
	private String memberCompanyName;
	private long memberCompanyNum;
	private long memberPhoneNum;
	private Date memberCreate;
	private Date memberUpdate;
}
