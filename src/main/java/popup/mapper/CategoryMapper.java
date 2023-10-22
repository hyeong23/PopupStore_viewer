package popup.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CategoryMapper {

	public boolean insertCategory(@Param("storeNum") int storeNum,@Param("category1") String category1) throws Exception;
	
	public boolean updateCategory(@Param("storeNum") int storeNum,@Param("category1") String category1) throws Exception;
	
	public List<Integer> getStoreByCategory(String category) throws SQLException;

	public List<String> getCategoryOne(int storeNum);

}
