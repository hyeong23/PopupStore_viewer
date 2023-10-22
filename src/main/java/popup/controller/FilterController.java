package popup.controller;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.dto.Category;
import popup.service.AlarmService;
import popup.service.CategoryService;
import popup.service.FavoriteService;
import popup.service.MemberService;
import popup.service.OpenStoreService;
import popup.service.StoreService;
import popup.vo.StoreVo;

@Controller
public class FilterController {
	
	@Autowired
	OpenStoreService openStoreService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	FavoriteService favoriteService;
	
	@Autowired
	StoreService storeService;
	
	@Autowired
	AlarmService alarmService;
	
	@RequestMapping(value = "/calendar/filter", method = RequestMethod.GET)
	public String calendarFilter(Model model, HttpSession session , 
								@Param("category") String category,					
								@Param("heart") int heart,
								@Param("startDate") int startDate,
								@RequestParam(value = "storeTitle", required = false) String[] storeTitle,
								@Param("storeLoc") String storeLoc) throws Exception 
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
		try {
			List<Integer> storeNum = new ArrayList<>();
			
			//storeTitle 같은 store 가져오기
			if(storeTitle != null) {
				List<Integer> getStoreByStoreTitle = storeService.getStoreByStoreTitle(storeTitle);
				storeNum.addAll(getStoreByStoreTitle);
				}
			//companyName이 같은 member의 store_num 가져오기
			
			//category가 같은 store_num 가져오기 , select 면 실행x
			if(!"select".equals(category)) {
				List<Integer> getStoreByCategory = categoryService.getStoreByCategory(category);	
				storeNum.retainAll(getStoreByCategory);
			}
			
			
		
			//heart 가 1이면 session member_id 랑 일치하는 store_num 가져오기, 0이면 진행x
			if(heart == 1) {
				int customerNum = (int) session.getAttribute("memberNum");
				List<Integer> getStoreByHeart = favoriteService.getStoreByHeart(customerNum);
				storeNum.retainAll(getStoreByHeart);
			}
			
			//0이면 실행 x ,1이면 startDate가 sysDate 보다 작은 store 가져오기,2면 starDate가 sysDate 보다 큰 store 가져오기
			if(startDate == 1) {
				List<Integer> getStoreBySmallDate = storeService.getStoreBySmallDate();
				storeNum.retainAll(getStoreBySmallDate);
			}else if(startDate == 2) {
				List<Integer> getStoreByBigDate = storeService.getStoreByBigDate();
				storeNum.retainAll(getStoreByBigDate);
			}
			
			if(!"전체".equals(storeLoc)) {
				List<Integer> getStoreByLoc = storeService.getStoreByLoc(storeLoc);
				storeNum.retainAll(getStoreByLoc);
			}
			
			
						
			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "calendar";
	
	}
	
	@RequestMapping(value = "/calendar/search", method = RequestMethod.GET)
	public String calendarSearch(Model model, HttpSession session , 
							 @Param("search") String search) throws Exception  
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
		try {
			List<Integer> storeNum = new ArrayList<>();
			Set<Integer> uniqueStoreNums = new HashSet<>();
			
			List<Integer> searchStoreList = openStoreService.searchStoreByTitleAndLoc(search);
			uniqueStoreNums.addAll(searchStoreList);

			String[] searchMember = openStoreService.searchMemberByName(search);

				if(searchMember.length == 0) {
					
				}else {
					List<Integer> getStoreByCompanyName = storeService.getStoreByCompanyName(searchMember);	

					uniqueStoreNums.addAll(getStoreByCompanyName);
				}
		
			storeNum.addAll(uniqueStoreNums);

			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "calendar";
	
	}


	
	@RequestMapping(value = "/card/filter", method = RequestMethod.GET)
	public String cardFilter(Model model, HttpSession session , 
								@Param("category") String category,					
								@Param("heart") int heart,
								@Param("startDate") int startDate,
								@RequestParam(value = "storeTitle", required = false) String[] storeTitle,
								@Param("storeLoc") String storeLoc) throws Exception 
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
		if((Integer) session.getAttribute("memberNum") != null) {
			Integer memberNum = (Integer) session.getAttribute("memberNum");
			
			List<Integer> getStoreByHeart = favoriteService.getStoreByHeart(memberNum);
			
			List<Integer> getStoreByAlarm = alarmService.getStoreByAlarm(memberNum);
			
			model.addAttribute("getStoreByHeart",getStoreByHeart);
			model.addAttribute("getStoreByAlarm",getStoreByAlarm);
		}

			
		try {
			List<Integer> storeNum = new ArrayList<>();
			
			
			
			//storeTitle 같은 store 가져오기
			if(storeTitle != null) {
				List<Integer> getStoreByStoreTitle = storeService.getStoreByStoreTitle(storeTitle);				
				storeNum.addAll(getStoreByStoreTitle);
				}
			//companyName이 같은 member의 store_num 가져오기
			
			//category가 같은 store_num 가져오기 , select 면 실행x
			if(!"select".equals(category)) {
				List<Integer> getStoreByCategory = categoryService.getStoreByCategory(category);					
				storeNum.retainAll(getStoreByCategory);
			}
			
			
		
			//heart 가 1이면 session member_id 랑 일치하는 store_num 가져오기, 0이면 진행x
			if(heart == 1) {
				int customerNum = (int) session.getAttribute("memberNum");
				List<Integer> getStoreByHeart1 = favoriteService.getStoreByHeart(customerNum);			
				storeNum.retainAll(getStoreByHeart1);
			}
			
			//0이면 실행 x ,1이면 startDate가 sysDate 보다 작은 store 가져오기,2면 starDate가 sysDate 보다 큰 store 가져오기
			if(startDate == 1) {
				List<Integer> getStoreBySmallDate = storeService.getStoreBySmallDate();	
				storeNum.retainAll(getStoreBySmallDate);
			}else if(startDate == 2) {
				List<Integer> getStoreByBigDate = storeService.getStoreByBigDate();
				storeNum.retainAll(getStoreByBigDate);
			}
			
			if(!"전체".equals(storeLoc)) {
				List<Integer> getStoreByLoc = storeService.getStoreByLoc(storeLoc);		
				storeNum.retainAll(getStoreByLoc);
			}
	
			
			
			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
			
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "card";
	
	}
	
	@RequestMapping(value = "/card/search", method = RequestMethod.GET)
	public String cardSearch(Model model, HttpSession session , 
							 @Param("search") String search) throws Exception  
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
		if((Integer) session.getAttribute("memberNum") != null) {
			Integer memberNum = (Integer) session.getAttribute("memberNum");
			
			List<Integer> getStoreByHeart = favoriteService.getStoreByHeart(memberNum);
			
			List<Integer> getStoreByAlarm = alarmService.getStoreByAlarm(memberNum);
			
			model.addAttribute("getStoreByHeart",getStoreByHeart);
			model.addAttribute("getStoreByAlarm",getStoreByAlarm);
		}
		
		try {
			List<Integer> storeNum = new ArrayList<>();
			Set<Integer> uniqueStoreNums = new HashSet<>();
			
			
			
			List<Integer> searchStoreList = openStoreService.searchStoreByTitleAndLoc(search);
			uniqueStoreNums.addAll(searchStoreList);

			String[] searchMember = openStoreService.searchMemberByName(search);

				if(searchMember.length == 0) {
					
				}else {
					List<Integer> getStoreByCompanyName = storeService.getStoreByCompanyName(searchMember);	

					uniqueStoreNums.addAll(getStoreByCompanyName);
				}
		
			storeNum.addAll(uniqueStoreNums);
		
			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "card";
	
	}
	
	@RequestMapping(value = "/map/filter", method = RequestMethod.GET)
	public String mapFilter(Model model, HttpSession session , 
								@Param("category") String category,					
								@Param("heart") int heart,
								@Param("startDate") int startDate,
								@RequestParam(value = "storeTitle", required = false) String[] storeTitle,
								@Param("storeLoc") String storeLoc) throws Exception 
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
		try {
			List<Integer> storeNum = new ArrayList<>();
			
			//storeTitle 같은 store 가져오기
			if(storeTitle != null) {
				List<Integer> getStoreByStoreTitle = storeService.getStoreByStoreTitle(storeTitle);				
				storeNum.addAll(getStoreByStoreTitle);
				}
			//companyName이 같은 member의 store_num 가져오기
			
			//category가 같은 store_num 가져오기 , select 면 실행x
			if(!"select".equals(category)) {
				List<Integer> getStoreByCategory = categoryService.getStoreByCategory(category);					
				storeNum.retainAll(getStoreByCategory);
			}
			
			
		
			//heart 가 1이면 session member_id 랑 일치하는 store_num 가져오기, 0이면 진행x
			if(heart == 1) {
				int customerNum = (int) session.getAttribute("memberNum");
				List<Integer> getStoreByHeart = favoriteService.getStoreByHeart(customerNum);			
				storeNum.retainAll(getStoreByHeart);
			}
			
			//0이면 실행 x ,1이면 startDate가 sysDate 보다 작은 store 가져오기,2면 starDate가 sysDate 보다 큰 store 가져오기
			if(startDate == 1) {
				List<Integer> getStoreBySmallDate = storeService.getStoreBySmallDate();	
				storeNum.retainAll(getStoreBySmallDate);
			}else if(startDate == 2) {
				List<Integer> getStoreByBigDate = storeService.getStoreByBigDate();
				storeNum.retainAll(getStoreByBigDate);
			}
			
			if(!"전체".equals(storeLoc)) {
				List<Integer> getStoreByLoc = storeService.getStoreByLoc(storeLoc);		
				storeNum.retainAll(getStoreByLoc);
			}
	
						
			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "map";
	
	}
	
	@RequestMapping(value = "/map/search", method = RequestMethod.GET)
	public String mapSearch(Model model, HttpSession session , 
							 @Param("search") String search) throws Exception  
										 {
		
		List<String> location = Arrays.asList("전체","서울", "경기","인천","강원","제주","부산","경남","대구","경북","울산","대전","충남","충북","광주","전남","전북");
		List<StoreVo> openStoreList = openStoreService.getAllStore();
		List<String> getBussinessMember = memberService.getBussinessMember();
		
		try {
			List<Integer> storeNum = new ArrayList<>();
			Set<Integer> uniqueStoreNums = new HashSet<>();
			
			List<Integer> searchStoreList = openStoreService.searchStoreByTitleAndLoc(search);
			uniqueStoreNums.addAll(searchStoreList);

			String[] searchMember = openStoreService.searchMemberByName(search);

				if(searchMember.length == 0) {
					
				}else {
					List<Integer> getStoreByCompanyName = storeService.getStoreByCompanyName(searchMember);	

					uniqueStoreNums.addAll(getStoreByCompanyName);
				}
		
			storeNum.addAll(uniqueStoreNums);

			List<StoreVo> filterStoreList = openStoreService.filterStoreList(storeNum);
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		} catch (Exception e) {
			
			List<StoreVo> filterStoreList = null;
			
			
			model.addAttribute("openStoreList", openStoreList);
			model.addAttribute("getBussinessMember", getBussinessMember);
			model.addAttribute("filterStoreList", filterStoreList);
			model.addAttribute("location", location);
		}
		
		

		
		
	return "map";
	
	}
	
	
	
	
	
	
	
	
	
	
}
