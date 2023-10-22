package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import popup.service.PictureService;

@Controller
public class PictureController {
	
	
	@Autowired
	PictureService pictureService;
}
