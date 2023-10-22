package popup.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.dto.Member;
import popup.service.MemberService;

@Controller
public class RegisterController {
	
	@Autowired
	MemberService memberService;
	

	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerForm() {
		return "register";
	}
	
	
	
	//일반 회원가입
	@RequestMapping(value = "/general", method = RequestMethod.GET)
	public String generalForm() {
		return "general";
	}
	
	@RequestMapping(value = "/general", method = RequestMethod.POST)
	public String general(@RequestParam("memberId") String memberId,
						  @RequestParam("memberPw") String memberPw,
						  @RequestParam("memberNickname") String memberNickname,
						  @RequestParam("memberEmail") String memberEmail,
						  @RequestParam("memberPhoneNum") long memberPhoneNum,
						  Model model) throws  Exception{
		String view = "/error";
		int memberType = 1;
		
	
			boolean member = memberService.insertGeneralMember(memberId,memberPw,memberNickname,memberEmail,memberPhoneNum,memberType);
			
			if(member == true) {
				 view = "/login";
				}	
		
		

		return view;
	}
	
	
	
	
	
	
	
	//비지니스 회원가입
	@RequestMapping(value = "/business", method = RequestMethod.GET)
	public String businessForm() {
		return "business";
	}
	
	
	
	@RequestMapping(value = "/business", method = RequestMethod.POST)
	public String business(@RequestParam("memberId") String memberId,
						  @RequestParam("memberPw") String memberPw,
						  @RequestParam("memberEmail") String memberEmail,
						  @RequestParam("memberCompanyName") String memberCompanyName,
						  @RequestParam("memberCompanyNum") long memberCompanyNum,
						  @RequestParam("memberPhoneNum") long memberPhoneNum,
						  Model model) throws Exception{
		String view = "/error";
		int memberType = -1;
		
	
		
			
			boolean member = memberService.insertBusinessMember(memberId,memberPw,memberEmail, memberCompanyName,memberCompanyNum,memberPhoneNum,memberType);
			
			if(member == true) {
			 view = "/login";
			}
		
	
		return view;
	}
	
}
