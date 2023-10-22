package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Ask;
import popup.mapper.AskMapper;

@Service
public class AskService {
	
	@Autowired
	AskMapper askMapper;
	
	@Autowired
	SqlSession sqlSession;
	
	//EmailList
	public List<Ask> getAllAsk() {
		return askMapper.getAllAsk();
		}
	
	public boolean insertAsk(Ask ask) throws SQLException, Exception {
		boolean result = false;
		int res = askMapper.insertAsk(ask);
		if(res != 0) {
			result = true;
		} else {
			throw new Exception();
		}
			
		return result;
	}
	public boolean updateAsk(int askNum, int askCheck) throws SQLException, Exception {
		boolean result = false;
		int res = askMapper.updateAsk(askNum, askCheck);
		if(res != 0) {
			result = true;
		} else {
			throw new Exception();
		}
			
		return result;
	}

	public boolean deleteAsk(int askNum) throws Exception {
		boolean result = false;
		int res = askMapper.deleteAsk(askNum);
		if(res != 0) {
			result = true;
		} else {
			throw new Exception();
		}
			
		return result;

		
	}

}
