package popup.service;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Announcement;
import popup.dto.Store;
import popup.mapper.StoreMapper;
import popup.vo.StoreVo;

@Service
public class StoreService {

	@Autowired
	StoreMapper storeMapper;

	public List<Map<String, String>> getStore2(int storeNum) throws SQLException, Exception {
		System.out.println("--");
		System.out.println(storeNum);
		List<Map<String, String>> store = storeMapper.test(storeNum);
		return store;
	}

	public List<Map<String, String>> getStore() throws SQLException, Exception {

		System.out.println("testd2");
		return storeMapper.getStore();
	}

	public List<StoreVo> getStoreList() throws Exception {

		return storeMapper.getStoreList();
	}

	public boolean insertStore(Store store) throws Exception {
		boolean result = false;

		int res = storeMapper.insertStore(store);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("store insert 실패");
		}

		return result;

	}

	// getStoreOne
	public StoreVo getStoreOne(int storeNum) throws Exception {
		return storeMapper.getStoreOne(storeNum);
	}

	// update
	public boolean updateStore(Store store) throws Exception {
		boolean result = false;
		System.out.println("check_1");
		int res = storeMapper.updateStore(store);

		if (res != 0) {
			System.out.println("check_2");
			result = true;
		} else {

			System.out.println("check_3");
			throw new Exception("store update 실패");
		}
		System.out.println("check_4");
		return result;

	}

	// delete
	public boolean deleteStore(int storeNum) throws SQLException, Exception {
		boolean result = false;

		int res = storeMapper.deleteStore(storeNum);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("delete fail");
		}

		return result;
	}

	public int getMaxStoreNum() throws Exception {

		return storeMapper.getMaxStoreNum();
	}

	public List<Integer> getStoreBySmallDate() throws Exception {

		return storeMapper.getStoreBySmallDate();
	}

	public List<Integer> getStoreByBigDate() throws Exception {

		return storeMapper.getStoreByBigDate();
	}

	public List<Integer> getStoreByCompanyName(String[] memberCompanyName) throws Exception {

		return storeMapper.getStoreByCompanyName(memberCompanyName);
	}

	public List<Integer> getStoreByStoreTitle(String[] storeTitle) throws Exception {
		return storeMapper.getStoreByStoreTitle(storeTitle);
	}

	public List<Integer> getStoreByLoc(String storeLoc) throws Exception {
		return storeMapper.getStoreByLoc(storeLoc);

	}

	public Date getDateByStoreNum(int storeNum) throws Exception{
		
		return storeMapper.getDateByStoreNum(storeNum);
	}

	// 조회수
	public int countStore(int storeNum) throws SQLException, Exception{
		return storeMapper.countStore(storeNum);
		
	}

	public boolean storeApprove(int storeNum) {
		return storeMapper.storeApprove(storeNum);
		
	}

	public boolean storeDeny(int storeNum) {
		return storeMapper.storeDeny(storeNum);
		
	}

	public List<StoreVo> getStoreListByMember(int memberNum) {
		return storeMapper.getStoreListByMember(memberNum);
	}


	public boolean addFavorite(int storeNum) {
		return storeMapper.addFavorite(storeNum);
	}

	public boolean subFavorite(int storeNum) {
		return storeMapper.subFavorite(storeNum);
	}

	
}
