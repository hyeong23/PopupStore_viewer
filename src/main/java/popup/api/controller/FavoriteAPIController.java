package popup.api.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import popup.dto.Favorite;
import popup.service.FavoriteService;
import popup.service.StoreService;
@RestController
public class FavoriteAPIController {
	
	@Autowired
	FavoriteService favoriteService;
	
	@Autowired
	StoreService storeService;
	
	//storeNum과 memberId 필요
	@RequestMapping(value = "/api/like", method = RequestMethod.POST)
	public boolean checkHeart(@RequestParam("storeNum") int storeNum, 
						  HttpSession session,
						  Model model) throws Exception {
		boolean result = false;
		boolean result2 = false;
		Object memberNum = session.getAttribute("memberNum");



		List<Favorite> check = favoriteService.checkHeart(storeNum, memberNum);

		if(check.isEmpty()) {
			result = favoriteService.insertHeart(storeNum, memberNum);
			result2= storeService.addFavorite(storeNum);
		}else {
			result = favoriteService.deleteHeart(storeNum, memberNum);	
			result2= storeService.subFavorite(storeNum);
		}
		
		
		
		
		return result;
		
		
	}
	
}
