package popup.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.ResolverUtil.IsA;
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

import popup.dto.Announcement;
import popup.dto.Category;
import popup.dto.Picture;
import popup.dto.Store;
import popup.service.CategoryService;
import popup.service.PictureService;
import popup.service.StoreService;
import popup.vo.StoreVo;

@Controller
public class StoreController {

	@Autowired
	StoreService storeService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	PictureService pictureService;

	@RequestMapping(value = "/storeList", method = RequestMethod.GET)
	public String storeListForm(Model model ,HttpSession session) throws Exception {
		
		int memberNum = (int) session.getAttribute("memberNum");
		System.out.println(memberNum);
		List<StoreVo> store = storeService.getStoreListByMember(memberNum);
		System.out.println(store);
//		List<StoreVo> store = storeService.getStoreList();
		model.addAttribute("store", store);

		return "storeList";
	}

	// 스토어 등록
	@RequestMapping(value = "/storeRegister", method = RequestMethod.GET)
	public String storeRegisterForm(Model model) throws Exception {

		return "storeRegister";
	}

	@RequestMapping(value = "/storeRegister", method = RequestMethod.POST)
	public String insertStore(@ModelAttribute Store store, @Param("category1") String category1,
			@Param("category2") String category2, @RequestPart("thumbnail") MultipartFile thumbnail,
			@RequestPart("picture") MultipartFile[] pictures, HttpSession session, Model model) {

		String view = "error";

		boolean storeResult = false;
		boolean categoryResult1 = false;
		boolean categoryResult2 = false;
		boolean thumbnailResult = false;
		boolean pictureResult = false;

		int storeNum = 0;
		int thumbnailType = 1;
		int pictureType = 0;

		if (category1 == category2) {
			category2 = null;
		}

		try {
			// login 하면 memberNum session에 보관 시킨 후 가져와서 store의 memberNum에 추가
			store.setMemberNum((int) session.getAttribute("memberNum"));

			storeResult = storeService.insertStore(store);

			// 스토어 insert후 storeNum이 가장 큰 값을 가져오면 storeNum을 알수 있음
			storeNum = storeService.getMaxStoreNum();

			if (category2 != null) {

				categoryResult1 = categoryService.insertCategory(storeNum, category1);
				categoryResult2 = categoryService.insertCategory(storeNum, category2);

			} else {
				categoryResult1 = categoryService.insertCategory(storeNum, category1);
			}

			thumbnailResult = pictureService.insertPicture(storeNum, thumbnail, thumbnailType);
			// for문으로 여러파일 업로드
			for (MultipartFile picture : pictures) {

				pictureResult = pictureService.insertPicture(storeNum, picture, pictureType);
			}

			if (storeResult && categoryResult1 && pictureResult && thumbnailResult) {
				view = "redirect:/storeList";
			}

		} catch (Exception e) {
			e.printStackTrace();
			return view;
		}

		return view;
	}



	// storeUpdate
	@RequestMapping(value = "/storeUpdate/{storeNum}", method = RequestMethod.GET)
	public String storeUpdateForm(@PathVariable("storeNum") int storeNum, Model model) throws Exception {
		
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
		return "storeUpdate";
	}

	// 보조 강사: POST 요청이기 때문에 /storeUpdate/{storeNum} 에서 변경함
	@RequestMapping(value = "/storeUpdate", method = RequestMethod.POST)
	public String updateStore(@ModelAttribute Store store, @Param("storeNum") int storeNum,
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
			

			view = "redirect:/storeList";
		} catch (Exception e) {
			e.printStackTrace();
			return view;
		}

		return view;
	}

	// delete
	@RequestMapping(value = "/storeList/{storeNum}", method = RequestMethod.DELETE)
	public String deleteStore(@PathVariable int storeNum) {

		String view = "error";
		try {
			boolean result = storeService.deleteStore(storeNum);

			if (result) {
				view = "redirect:/storeList";
				return view;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return view;
	}

	// store 보기
	@RequestMapping(value = "/storeList/{storeNum}", method = RequestMethod.GET)
	public String storeDetail(@PathVariable int storeNum, Model model) throws Exception {

		// 조회수
		storeService.countStore(storeNum);

		StoreVo store = storeService.getStoreOne(storeNum);

		model.addAttribute("store", store);
		System.out.println(storeNum);
		System.out.println(store);
		
		return "storeDetail";
	}

}
