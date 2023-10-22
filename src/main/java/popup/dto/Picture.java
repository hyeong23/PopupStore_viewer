package popup.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString 
public class Picture {
	private int pictureNum;
	private int storeNum;
	private String picturePath;
	private String pictureName;
	private String pictureOriginalName;
	private long pictureSize;
	private Date pictureDate;
	private int pictureType;

	
	@Builder
	public Picture(int pictureNum,int storeNum,String picturePath,String pictureName,String pictureOriginalName,long pictureSize,Date pictureDate,int pictureType) {

		this.pictureNum = pictureNum;
		this.storeNum = storeNum;
		this.picturePath = picturePath;
		this.pictureName = pictureName;
		this.pictureOriginalName = pictureOriginalName;
		this.pictureSize = pictureSize;
		this.pictureDate = pictureDate;
		this.pictureType = pictureType;

	}
	
	
	
}
