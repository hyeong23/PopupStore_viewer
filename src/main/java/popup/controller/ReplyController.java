package popup.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import popup.dto.Reply;
import popup.service.ReplyService;
import popup.vo.ReplyVo;

@Controller
public class ReplyController {
	
	
	@Autowired
	ReplyService replyService;
	
	@ResponseBody
	@RequestMapping(value = "/getreply", method = RequestMethod.GET)
	public List<ReplyVo> getReplyList(@RequestParam("number") int Num) throws Exception {
	   
		System.out.println(Num);
	   List<ReplyVo> reply = replyService.getReply(Num);
	   System.out.println(reply);
	   
	   return reply;
	}   
	
	@ResponseBody
	@RequestMapping(value = "/insertreply", method = RequestMethod.POST)
	public void updateStore(Reply reply,
							  Model model)  {
			String view = "error";
			System.out.println(reply);
			try {
				boolean result = replyService.insertReply(reply);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
	// 댓글 삭제
	@ResponseBody
	@RequestMapping(value = "/deletereply", method = RequestMethod.POST)
	public int getReplyList(Reply reply,  HttpSession session) throws Exception {

	   int result = 0;
	   System.out.println(reply);
	   int member = (int)session.getAttribute("memberNum");
	   System.out.println(member);
	   System.out.println("test");
	   System.out.println(reply.getReplyNum());
	   int checkId = replyService.replyUserIdCheck(reply.getReplyNum());
	   System.out.println("test22" + checkId);
	   if(member == checkId) {
		   System.out.println("test2 resul");
		   System.out.println("tes" + reply);
		 //reply.setMemberNum(member);
		 reply.setMemberNum(member);
		 System.out.println("tes2" + reply);
	    replyService.deleteReply(reply);
	    
	    result = 1;
	    System.out.println("test2 resul");
	   }
	   
	   return result;   
	}
	// 댓글 수정
	@ResponseBody
	@RequestMapping(value = "/modifyreply", method = RequestMethod.POST)
	public int modifyReply(Reply reply, HttpSession session) throws Exception {
		 int result = 0;

		   int member = (int)session.getAttribute("memberNum");


		   if(member == reply.getMemberNum()) {

			 reply.setMemberNum(member);

		    replyService.modifyReply(reply);
		    
		    result = 1;

		   }
		   
		   return result;
	}   
}
