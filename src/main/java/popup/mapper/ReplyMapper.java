package popup.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Reply;
import popup.vo.ReplyVo;

@Mapper
public interface ReplyMapper {

	public int insertReply(Reply reply) throws SQLException;

	public List<ReplyVo> getReplyList();
	
	public List<ReplyVo> getReply(int storeNum);
	
	public void deleteReply(Reply reply);
	
	public void modifyReply(Reply reply);
	
	public int replyUserIdCheck(int replyNum);

}
