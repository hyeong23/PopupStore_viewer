package popup.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import popup.dto.Favorite;
import popup.vo.StoreVo;

@Mapper
public interface FavoriteMapper {

	List<Integer> getStoreByHeart(int customerNum) throws SQLException;

	boolean insertHeart(int storeNum, Object memberNum) throws SQLException;
	
	List<Favorite> checkHeart(int storeNum, Object memberNum)throws SQLException;

	boolean deleteHeart(int storeNum, Object memberNum)throws SQLException;

	// 사용자의 회원 번호에 해당하는 좋아요 정보를 조회하는 메서드
	List<StoreVo> getLikedStoresByMemberNum(@Param("customerNum") int customerNum);


}
