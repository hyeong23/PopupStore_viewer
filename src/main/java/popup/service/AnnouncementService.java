package popup.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import popup.dto.Announcement;
import popup.mapper.AnnouncementMapper;

@Service
public class AnnouncementService {

	@Autowired
	AnnouncementMapper announcementMapper;

	// List
	public List<Announcement> getAnnouncementList() throws Exception {
		return announcementMapper.getAnnouncementList();
	}

	// select one
	public Announcement getAnnouncement(int announcementNum) throws Exception {
		return announcementMapper.getAnnouncement(announcementNum);
	}

	// insert
	public boolean insertAnnouncement(Announcement announcement) throws SQLException, Exception {
		boolean result = false;

		int res = announcementMapper.insertAnnouncement(announcement);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("insert fail");
		}

		return result;
	}

	// update
	public boolean updateAnnouncement(Announcement announcement) throws SQLException, Exception {
		boolean result = false;

		int res = announcementMapper.updateAnnouncement(announcement);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("update fail");
		}

		return result;
	}

	// delete
	public boolean deleteAnnouncement(int announcementNum) throws SQLException, Exception {
		boolean result = false;

		int res = announcementMapper.deleteAnnouncement(announcementNum);

		if (res != 0) {
			result = true;
		} else {
			throw new Exception("delete fail");
		}

		return result;
	}

	// count
	public int countAnnouncement(int announcementNum) throws SQLException, Exception {
		return announcementMapper.countAnnouncement(announcementNum);
	}
}
