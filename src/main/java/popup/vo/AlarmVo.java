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
public class AlarmVo {
	private int alarmNum;
	private int memberNum;
	private int storeNum;
	private String alarmContent;
	private int alarmRead;
	private Date alarmTime;
	private Date alarmCheckedTime;
	private char alarmStatus;
	private Date alarmCreate;
	private long alarmSub;
	private String storeTitle;
}
