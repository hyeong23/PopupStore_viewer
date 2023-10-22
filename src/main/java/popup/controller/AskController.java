package popup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import popup.dto.Ask;
import popup.service.AskService;

@Controller
public class AskController {
	
	
	@Autowired
	AskService askService;
	
	@RequestMapping(value = "/ask", method = RequestMethod.GET)
	public String insertAskForm() {
		return "ask";
	}
	
	@RequestMapping(value = "/ask", method = RequestMethod.POST)
	public String insertAsk(@ModelAttribute Ask newAsk,
							Model model) {
		String view = "error";
		boolean askResult = false;
		try {
			askResult = askService.insertAsk(newAsk);
			System.out.println(newAsk);
		 if(askResult) {

			view = "redirect:/calendar";
			return view;
		 }
		 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return view;
	}
}
