package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import popup.service.CategoryService;

@Controller
public class CategoryController {
	
	
	@Autowired
	CategoryService categoryService;
}
