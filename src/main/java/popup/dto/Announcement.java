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
public class Announcement {
	private int announcementNum;
	private int memberNum;
	private String announcementTitle;
	private String announcementBody;
	private Date announcementCreate;
	private Date announcementUpdate;
	private int announcementCount;
}
