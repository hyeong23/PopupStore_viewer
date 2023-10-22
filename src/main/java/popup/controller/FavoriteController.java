package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import popup.service.FavoriteService;

@Controller
public class FavoriteController {
	
	
	@Autowired
	FavoriteService favoriteService;
}
