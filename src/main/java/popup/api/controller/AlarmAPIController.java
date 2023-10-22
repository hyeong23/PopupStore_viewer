package popup.api.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;
import popup.dto.Alarm;
import popup.service.AlarmService;
import popup.service.PictureService;
import popup.service.StoreService;
import popup.vo.AlarmVo;


@RestController
@RequiredArgsConstructor
public class AlarmAPIController {
	
	@Autowired
	AlarmService alarmService;
	
	@Autowired
	StoreService storeService;
	
	@RequestMapping(value = "/api/insertAlarm", method = RequestMethod.POST)
	public boolean insertAlarm(HttpSession session ,  
						@RequestParam(name = "storeNum", required = false) int storeNum,
            			@RequestParam(name = "storeTitle", required = false) String storeTitle
            			) throws Exception {
		
		boolean result = false;

		int memberNum = (int) session.getAttribute("memberNum");
		
		Date storeStart = storeService.getDateByStoreNum(storeNum);
		
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(storeStart);

		// storeStart에서 하루를 뺀 날짜 계산
		calendar.add(Calendar.DAY_OF_MONTH, -1);
		
		// Calendar 객체에서 Date로 변환		
		Date alarmTime = calendar.getTime();
		
		
		
		String alarmContent = storeTitle + " 팝업스토어가 내일 시작됩니다.";
		

			result = alarmService.insertAlarm(memberNum,storeNum,alarmContent,alarmTime);
			
		
		return result;
	}
	
	
	
	
	@RequestMapping(value = "/api/deleteAlarm", method = RequestMethod.POST)
	public boolean deleteAlarm(HttpSession session ,  
						@RequestParam(name = "storeNum", required = false) int storeNum
            			) throws Exception {
		
		boolean result = true;

		int memberNum = (int) session.getAttribute("memberNum");	

		result = alarmService.deleteAlarm(memberNum,storeNum);
			
		
		return result;
	}
	

	@RequestMapping(value = "/api/checkAlarm", method = RequestMethod.POST)
	public boolean checkAlarm(HttpSession session ,  
						@RequestParam(name = "storeNum", required = false) int storeNum
            			) throws Exception {
		
		boolean result = true;

		int memberNum = (int) session.getAttribute("memberNum");	

		result = alarmService.deleteAlarm(memberNum,storeNum);
			
		

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
		
		return result;
	}
	
}
