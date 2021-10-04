package of.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.servlet.HandlerInterceptor;

import of.member.model.Member;

public class MyInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		try {
			HttpSession session = request.getSession();
			// 統一攔截（查詢當前session是否存在user）(這裡user會在每次登入成功後，寫入session)
			Member member = (Member) session.getAttribute("member");
			if (member != null) {
				session.setAttribute("member", member);
				return true;
			} else {
				response.sendRedirect(request.getContextPath() + "/loginPgeEntry.controller");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
