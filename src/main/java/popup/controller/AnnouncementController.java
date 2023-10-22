package popup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;

import popup.dto.Announcement;
import popup.service.AnnouncementService;

@Controller
public class AnnouncementController {

	@Autowired
	AnnouncementService announcementService;

	// 게시물 리스트 조회
	// http://localhost:8081/announcement
	@RequestMapping(value = "/announcement", method = RequestMethod.GET)
	public String announcementList(Model model) throws Exception {

		List<Announcement> list = announcementService.getAnnouncementList();

		model.addAttribute("list", list);

		return "announcement";
	}

	// 상세 조회
	// http://localhost:8081/announcement/announcementNum
	@RequestMapping(value = "/announcement/{announcementNum}", method = RequestMethod.GET)
	public String announcement(@PathVariable int announcementNum, Model model) throws Exception {

		// 조회수
		announcementService.countAnnouncement(announcementNum);
		
		Announcement announcement = announcementService.getAnnouncement(announcementNum);
		
		
		model.addAttribute("announcement", announcement);

		return "announcementDetail";
	}

	// 게시물 작성
	// http://localhost:8081/announcement/insert
	@RequestMapping(value = "/announcement/insert", method = RequestMethod.GET)
	public String insertAnnouncementForm() {
		return "announcementRegister";
	}

	@RequestMapping(value = "/announcement/insert", method = RequestMethod.POST)
	public String insertAnnouncement(@ModelAttribute Announcement newAnnouncement, Model model) {

		String view = "error";

		System.out.println(newAnnouncement);

		boolean result = false;

		try {
			result = announcementService.insertAnnouncement(newAnnouncement);

			if (result) {
				view = "redirect:/announcement";
				return view;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return view;
		}

		return view;
	}

	// 수정
	// http://localhost:8081/announcement/modify/announcementNum
	@RequestMapping(value = "/announcement/modify/{announcementNum}", method = RequestMethod.GET)
	public String updateAnnouncementForm(@PathVariable int announcementNum, Model model) throws Exception {
		Announcement announcement = announcementService.getAnnouncement(announcementNum);
		
		model.addAttribute("announcement", announcement);

		return "announcementUpdate";
	}

	@RequestMapping(value = "/announcement/modify/{announcementNum}", method = RequestMethod.PUT)
	public String updateAnnouncement(@PathVariable int announcementNum,
			@ModelAttribute("announcementTitle") String announcementTitle,
			@ModelAttribute("announcementBody") String announcementBody) throws Exception {
		String view = "error";

		boolean result = false;

		Announcement announcement = announcementService.getAnnouncement(announcementNum);
		announcement.setAnnouncementTitle(announcementTitle);
		announcement.setAnnouncementBody(announcementBody);

		try {
			result = announcementService.updateAnnouncement(announcement);

			if (result) {
				return "redirect:/announcement/" + announcementNum;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return view;
		}

		return view;
	}

	// 삭제
	@RequestMapping(value = "/announcement/{announcementNum}", method = RequestMethod.DELETE)
	public String deleteAnnouncement(@PathVariable int announcementNum) {

		String view = "error";
		try {
			boolean result = announcementService.deleteAnnouncement(announcementNum);

			if (result) {
				view = "redirect:/announcement";
				return view;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return view;
	}

}
