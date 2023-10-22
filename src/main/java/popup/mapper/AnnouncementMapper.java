package popup.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import popup.dto.Announcement;

@Mapper
public interface AnnouncementMapper {

	// 게시물 리스트 조회
	public List<Announcement> getAnnouncementList() throws Exception;

	// 게시글 상세 조회
	public Announcement getAnnouncement(int announcementNum) throws Exception;

	// 게시글 작성
	public int insertAnnouncement(Announcement announcement) throws SQLException;

	// 수정
	public int updateAnnouncement(Announcement announcement);

	// 삭제
	public int deleteAnnouncement(int announcementNum) throws SQLException;
	
	// 조회수
	public int countAnnouncement(int announcementNum) throws SQLException;

}
