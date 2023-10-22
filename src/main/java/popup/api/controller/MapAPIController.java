package popup.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import popup.dto.Picture;
import popup.service.MemberService;
import popup.service.OpenStoreService;
import popup.service.PictureService;

@RestController
@RequiredArgsConstructor
public class MapAPIController {
	
	@Autowired
	final PictureService pictureService;
	
	@Autowired
	OpenStoreService openStoreService;
	
	@RequestMapping(value = "/api/map/{storeNum}", method = RequestMethod.GET)
	public List<Picture> getPicture(@PathVariable int storeNum ) throws Exception {
	
		List<Picture> result =  pictureService.getPictureByStoreNum(storeNum);
		
		if(result != null) {
			openStoreService.countStoreByStoreNum(storeNum);
		}
		
		System.out.println(result);
		return result;
	}
	
	
}
