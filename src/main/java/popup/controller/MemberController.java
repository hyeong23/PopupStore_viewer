package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import popup.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	
}

