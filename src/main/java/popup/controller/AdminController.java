package popup.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import popup.dto.Ask;
import popup.dto.Member;
import popup.dto.Store;
import popup.service.AskService;
import popup.service.CategoryService;
import popup.service.MemberService;
import popup.service.PictureService;
import popup.service.StoreService;
import popup.vo.StoreVo;


@Controller
public class AdminController {
	
	@Autowired
	AskService askService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	StoreService storeService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	PictureService pictureService;
	
	//admin1페이지	
	
	@RequestMapping(value = "/adminviews", method = RequestMethod.GET)
	public String adminForm(HttpSession session,
							Model model) throws SQLException, Exception{
		return "adminviews";
	}
	
	@RequestMapping(value = "/adminpage1", method = RequestMethod.GET)
	public String adminpage1(Model model) throws SQLException, Exception{
		List<Ask> ask = askService.getAllAsk();
		model.addAttribute("ask", ask);
		return "adminpage1";
	}
	@RequestMapping(value = "/askupdate", method = RequestMethod.POST)
	public String askupdate(@RequestParam("id") int askNum,
			Model model) throws SQLException, Exception {
				
				askService.updateAsk(askNum, 1);
				return "redirect:/adminpage1";
	}
	@RequestMapping(value = "/askupdelete", method = RequestMethod.POST)
	public String askdelete(@RequestParam("id") int askNum,
			Model model) throws SQLException, Exception {
				
				askService.deleteAsk(askNum);
				return "redirect:/adminpage1";
	}
	
	
	
	//admin2페이지
	
	@RequestMapping(value = "/adminpage2", method = RequestMethod.GET)
	public String adminpage2(Model model) throws SQLException, Exception{
		List<Member> member = memberService.getMember();
	
		model.addAttribute("member", member);

		return "adminpage2";
	}
	
	@RequestMapping(value = "/businessupate", method = RequestMethod.POST)
	public String update(@RequestParam("id") int member_num,
						Model model) throws SQLException, Exception {
		
		 memberService.businessupdate(member_num);
	
		 return "redirect:/adminpage2";
	}
	
	
	@RequestMapping(value = "/businessdelete", method = RequestMethod.POST)
	public String delete(@RequestParam("id") int member_num,
						Model model) throws SQLException, Exception {
		
		memberService.businessdelete(member_num);
	
		 return "redirect:/adminpage2";
	}
	
	
	
	
	
	//admin3페이지
	
	@RequestMapping(value = "/adminpage3", method = RequestMethod.GET)
	public String storeRegisterForm2(Model model) throws Exception{
		
		List<StoreVo> store = storeService.getStoreList();
		
		model.addAttribute("store", store);

		return "adminpage3";
	}
	
	@RequestMapping(value = "/storeManagement/{storeNum}", method = RequestMethod.GET)
	public String storeManagement(@PathVariable("storeNum") int storeNum, Model model) throws Exception {
		
		StoreVo getStoreOne = storeService.getStoreOne(storeNum);
		
		List<String> getCategoryOne = categoryService.getCategoryOne(storeNum);
		
		if(getCategoryOne.size() == 2) {
			String category1 = getCategoryOne.get(0);
			String category2 = getCategoryOne.get(1);
			
			model.addAttribute("category1", category1);
			model.addAttribute("category2", category2);
		}else {
			String category1 = getCategoryOne.get(0);
			model.addAttribute("category1", category1);
		}
		
		String thumbnail = pictureService.getThumbnailOne(storeNum);
		

		List<String> picture = pictureService.getPictureOne(storeNum);
		System.out.println(picture);
		model.addAttribute("storeNum", storeNum); // 보조 강사: storeUpdate.jsp에 storeNum 전달
		model.addAttribute("getStoreOne",getStoreOne);
		model.addAttribute("thumbnail",thumbnail);
		model.addAttribute("picture",picture);
		return "storeManagement";
	}
	
	
	@RequestMapping(value = "/storeManagement", method = RequestMethod.POST)
	public String UpdateManagement(@ModelAttribute Store store, @Param("storeNum") int storeNum,
			@Param("category1") String category1, @Param("category2") String category2,
			@RequestPart(name = "thumbnail") MultipartFile thumbnail, @RequestPart(name = "picture",required = false) MultipartFile[] pictures,
			HttpSession session, Model model) throws Exception {

		String view = "error";

		boolean storeResult = false;
		boolean categoryResult1 = false;
		boolean categoryResult2 = false;
		boolean thumbnailResult = false;
		boolean pictureResult = false;

		// store = storeService.getStoreOne(storeNum);




		int thumbnailType = 1;
		int pictureType = 0;

		if (category1 == category2) {
			category2 = null;
		}

		try {
			// login 하면 memberNum session에 보관 시킨 후 가져와서 store의 memberNum에 추가
//			store.setMemberNum((int) session.getAttribute("memberNum"));

			storeResult = storeService.updateStore(store);

			if (category2 != null) {

				// 보조 강사: 이렇게 하면 category 테이블의 category 필드 값을 category2 값으로 덮어쓰는 건데,
				// 굳이 updateCategory(..,category1)을 할 필요를 모르겠습니다.
				categoryResult1 = categoryService.updateCategory(storeNum, category1);
				categoryResult2 = categoryService.updateCategory(storeNum, category2);

			} else {
				categoryResult1 = categoryService.updateCategory(storeNum, category1);
			}
			if(!thumbnail.isEmpty()) {
				
				thumbnailResult = pictureService.updatePicture(storeNum, thumbnail, thumbnailType);
				
			}
			if(pictures != null) {
				for (MultipartFile picture : pictures) {
					
					pictureResult = pictureService.deletePicture(storeNum, pictureType);
					pictureResult = pictureService.insertPicture(storeNum, picture, pictureType);
					
				}
			}
			// for문으로 여러파일 업로드
			

			view = "redirect:/adminpage3";
		} catch (Exception e) {
			e.printStackTrace();
			return view;
		}

		return view;
	}
	@RequestMapping(value = "/storeApprove", method = RequestMethod.POST)
	public String storeApprove(@RequestParam("id") int storeNum,
			Model model) throws SQLException, Exception {
				
				storeService.storeApprove(storeNum);
				return "redirect:/adminpage3";
	}
	@RequestMapping(value = "/storeDeny", method = RequestMethod.POST)
	public String storeDeny(@RequestParam("id") int storeNum,
			Model model) throws SQLException, Exception {
				
				storeService.storeDeny(storeNum);
				return "redirect:/adminpage3";
	}

	
	

}
