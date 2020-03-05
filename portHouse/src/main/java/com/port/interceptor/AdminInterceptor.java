package com.port.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.port.vo.MemberVO;

// AdminInterceptor는 HandlerInterceptorAdapter를 상속받고, 컨트롤러 실행 전에 실행되는 preHandel 메서드와, 컨트롤러 실행 후 실행되는 postHandle
public class AdminInterceptor extends HandlerInterceptorAdapter {
	// 컨트롤러가 실행되기 전 관리자 여부를 확인
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception {
	  
		HttpSession session = req.getSession(); // 현재 세션 불러오기
		MemberVO member = (MemberVO)session.getAttribute("member"); // 그 중 member라는 명칭의 세션 불러오기
		
		// member의 값이 없을 때(null)의 상황은 로그인하지 않은 상황, 로그인 화면으로 이동
		if(member == null) {
			res.sendRedirect(req.getContextPath() + "/member/login");
			return false;
		}
		
		// preHandle은 반환값이 true이면 컨트롤러로 진행되고, false면 진행 중지
		if(member == null || member.getVerify() != 9) {
			res.sendRedirect("/");
			return false;
		}
		  
		return true;
	}
}
