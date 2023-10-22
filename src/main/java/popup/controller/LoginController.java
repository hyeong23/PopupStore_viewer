package popup.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import popup.dto.Alarm;
import popup.dto.Member;
import popup.service.AlarmService;
import popup.service.MemberService;
import popup.vo.AlarmVo;

@Controller
public class LoginController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	AlarmService alarmService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("memberId") String memberId,
						@RequestParam("memberPw") String memberPw,
						HttpSession session,
						Model model) throws SQLException, Exception {
	
		String view = "error";
		
		Member member = memberService.getMemberByIdAndPw(memberId,memberPw);
		
		
		if(member.getMemberCompanyName().equals(null)) {
			session.setAttribute("memberName", member.getMemberNickname());
		}else {
			session.setAttribute("memberName", member.getMemberCompanyName());
		}
		
		if(member.getMemberType() != -1) {
			
		 session.setAttribute("memberId", member.getMemberId());
		 session.setAttribute("memberPw", member.getMemberPw());
		 session.setAttribute("memberNum", member.getMemberNum());

			int memberNum = (int) session.getAttribute("memberNum");	

			List<AlarmVo> getAlarm = alarmService.getAlarm(memberNum);

			// 현재 날짜와 시간 가져오기
			Date currentDate = new Date();

			// 차이가 0 이상인 알람과 differenceInDays 값을 저장할 리스트 생성
			List<AlarmVo> filteredAlarmList = new ArrayList<>();


			for (AlarmVo alarm : getAlarm) {
			    // Alarm 객체의 alarmTime에서 현재 날짜를 뺀 값 구하기
			    Date alarmTime = alarm.getAlarmTime();

			    // Date 객체를 Calendar 객체로 변환
			    Calendar calendarAlarmTime = Calendar.getInstance();
			    calendarAlarmTime.setTime(alarmTime);

			    Calendar calendarCurrentDate = Calendar.getInstance();
			    calendarCurrentDate.setTime(currentDate);

			    // 현재 날짜와 Alarm 날짜와의 차이 계산
			    long differenceInMilliseconds = calendarAlarmTime.getTimeInMillis() - calendarCurrentDate.getTimeInMillis();
			    long differenceInDays = differenceInMilliseconds / (24 * 60 * 60 * 1000);

			    alarm.setAlarmSub(differenceInDays+1);
			    // 차이가 0 이상인 경우에만 filteredAlarmList에 추가
			    if (differenceInDays >= 0) {
			        filteredAlarmList.add(alarm);

			    }
			}
			

			session.setAttribute("getAlarm", filteredAlarmList);

			
		 view = "redirect:/calendar";
		}
    
		if(member.getMemberType() == 0) {
			System.out.println(member.getMemberType());
			 session.setAttribute("memberId", member.getMemberId());
			 session.setAttribute("memberPw", member.getMemberPw());
			 session.setAttribute("memberNum", member.getMemberNum());
			 session.setAttribute("memberType", member.getMemberType());
			 
			
			 
			 view = "redirect:/adminviews";
		}
		
		if(member.getMemberType() == 1 || member.getMemberType() == 2) {
			System.out.println(member.getMemberType());
			 session.setAttribute("memberId", member.getMemberId());
			 session.setAttribute("memberPw", member.getMemberPw());
			 session.setAttribute("memberNum", member.getMemberNum());
			 session.setAttribute("memberType", member.getMemberType());
			 
			
			 
			 view = "redirect:/card";
		}
	
		 return view;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		if(session != null) {
			session.invalidate();
		}
		
		return "redirect:/login";
	}
	
	
	
	
	
	
}
