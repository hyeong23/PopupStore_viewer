package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.mapper.CategoryMapper;

@Service
public class CategoryService {

	@Autowired
	CategoryMapper categoryMapper;

	public boolean insertCategory(int storeNum, String category1) throws Exception {

		return categoryMapper.insertCategory(storeNum, category1);

	}

	public boolean updateCategory(int storeNum, String category1) throws Exception {

		return categoryMapper.updateCategory(storeNum, category1);

	}

	public List<Integer> getStoreByCategory(String category) throws SQLException {

		return categoryMapper.getStoreByCategory(category);
	}

	public List<String> getCategoryOne(int storeNum) {

		return categoryMapper.getCategoryOne(storeNum);
	}

}
