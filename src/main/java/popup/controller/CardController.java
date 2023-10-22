package popup.controller;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import popup.service.AlarmService;
import popup.service.FavoriteService;
import popup.service.MemberService;
import popup.service.OpenStoreService;
import popup.service.ReplyService;
import popup.vo.ReplyVo;
import popup.vo.StoreVo;

@Controller
public class CardController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	FavoriteService favoriteService;
	
	@Autowired
	AlarmService alarmService;
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value = "/card")
	public String openStoreList(Model model, HttpSession session) throws Exception  {
		
		//필터링을 위한 데이터
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<ReplyVo> getReplyList = replyService.getReplyList();
		List<String> getBussinessMember = memberService.getBussinessMember();
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
	

	try {
		Integer customerNum = (Integer) session.getAttribute("memberNum");
	
		List<Integer> getStoreByHeart = favoriteService.getStoreByHeart(customerNum);
		List<Integer> getStoreByAlarm = alarmService.getStoreByAlarm(customerNum);
			
		
		model.addAttribute("getStoreByHeart",getStoreByHeart);
		model.addAttribute("getStoreByAlarm",getStoreByAlarm);
		
		model.addAttribute("openStoreList", openStoreList);
		model.addAttribute("getReplyList", getReplyList);
		model.addAttribute("getBussinessMember", getBussinessMember);
		model.addAttribute("filterStoreList", openStoreList);
		model.addAttribute("location", location);
	} catch (Exception e) {

		 model.addAttribute("openStoreList", openStoreList); 
		 model.addAttribute("getReplyList", getReplyList);
		 model.addAttribute("getBussinessMember", getBussinessMember);
		 model.addAttribute("filterStoreList", openStoreList);
		 model.addAttribute("location", location);
		 return "card";
		 

	 }
	
	
	
	
	return "card";
	
	
	
}
}