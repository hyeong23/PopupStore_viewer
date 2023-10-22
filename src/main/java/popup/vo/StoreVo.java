package popup.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class StoreVo {
	private int memberNum;
	private String memberCompanyName;
	private String memberNickname;
	private int memberType;
	private int storeNum;
	private String storeTitle;
	private String storeIntro;
	private String storeBody;
	private Date storeStart;
	private Date storeEnd;
	private int storeFavorite;				
	private String storeLoc; 
	private String storeLocDetail;
	private String storeSite;
	private int storeCount;
	private int storeStatus;
	private Date storeCreate;
	private Date storeUpdate;
	private int pictureNum;
	private String pictureName;

}