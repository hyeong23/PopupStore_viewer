package popup.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Favorite;
import popup.mapper.FavoriteMapper;
import popup.vo.StoreVo;

@Service
public class FavoriteService {

	@Autowired
	FavoriteMapper favoriteMapper;

	public List<Integer> getStoreByHeart(int customerNum) throws SQLException{
		
		return favoriteMapper.getStoreByHeart(customerNum);
	}

	public boolean insertHeart(int storeNum, Object memberNum) throws SQLException {
			boolean result = favoriteMapper.insertHeart(storeNum, memberNum);
		return result;
	}
	
	public List<Favorite> checkHeart(int storeNum, Object memberNum) throws SQLException {
		List<Favorite> check = favoriteMapper.checkHeart(storeNum, memberNum);
		return check;
	}

	public boolean deleteHeart(int storeNum, Object memberNum) throws SQLException {
		boolean result = favoriteMapper.deleteHeart(storeNum, memberNum);
		if(result == true) {
			return false;
		}
		return true;
	}
	// 회원 번호에 해당하는 사용자의 좋아요 리스트를 가져오는 메서드
	public List<StoreVo> getLikedStoresByMemberNum(int customerNum) {

		return favoriteMapper.getLikedStoresByMemberNum(customerNum);
	}
	
	// 좋아요 리스트 삭제
    public void deleteHeart(int memberNum, int storeNum) throws SQLException {
        favoriteMapper.deleteHeart(memberNum, storeNum);
    }


}
