package popup.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class SessionInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
							HttpServletResponse response, 
							Object handler) throws Exception {
		
		
		
		// session 유무 검증
		HttpSession session = request.getSession(false);
		
		if(session == null || session.getAttribute("memberNum") == null) {
			// Exception 발생 시키거나 혹은 *main 전환해주거나
			
			response.sendRedirect("/login");
			// false : controller로 더이상 요청 진행 x
			return false;
		}
		
		return true;
	}
}
