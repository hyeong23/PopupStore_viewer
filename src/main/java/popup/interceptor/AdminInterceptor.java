package popup.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import lombok.extern.slf4j.Slf4j;
import popup.dto.Member;

@Slf4j
@Component
public class AdminInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
							HttpServletResponse response, 
							Object handler) throws Exception {
		
		log.info("preHandle");
		
		// session 유무 검증
		HttpSession session = request.getSession(false);
		
		//Member member = (Member) session.getAttribute("memberType");
		if(session == null || (int)session.getAttribute("memberType") != 0) {
			// Exception 발생 시키거나 혹은 *main 전환해주거나
			
			response.sendRedirect("/error");
			// false : controller로 더이상 요청 진행 x
			return false;
		}
		
		return true;
	}
}
