package popup.mapper;


import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import popup.dto.Announcement;
import popup.dto.Store;
import popup.vo.StoreVo;

@Mapper
public interface StoreMapper {
	
	public List<Map<String, String>> test(int storeNum) throws SQLException;
	
	public List<Map<String, String>> getStore() throws SQLException;

	public List<StoreVo> getStoreList() throws Exception;

	public int insertStore(Store store) throws Exception;
	
	public int updateStore(Store store) throws Exception;

	public int getMaxStoreNum() throws Exception;

	public List<Integer> getStoreBySmallDate() throws SQLException;

	public List<Integer> getStoreByBigDate() throws SQLException;

	public List<Integer> getStoreByCompanyName(@Param("memberCompanyName") String[] memberCompanyName) throws Exception;

	public List<Integer> getStoreByStoreTitle(@Param("storeTitle") String[] storeTitle) throws Exception;

	public List<Integer> getStoreByLoc(String storeLoc) throws Exception;


	public StoreVo getStoreOne(int storeNum) throws Exception;

	public Date getDateByStoreNum(int storeNum) throws Exception;

	public int countStore(int storeNum) throws SQLException;
	
	public int deleteStore(int storeNum) throws SQLException;

	public boolean storeApprove(int storeNum);

	public boolean storeDeny(int storeNum);

	public List<StoreVo> getStoreListByMember(int memberNum);

	public boolean addFavorite(int storeNum);

	public boolean subFavorite(int storeNum);

}
