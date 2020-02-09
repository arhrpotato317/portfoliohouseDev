package com.port.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.port.service.MemberService;
import com.port.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// 패스워드 암호화 사용
	@Autowired
	BCryptPasswordEncoder passEncoder;

	// 회원가입 get
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception {
		logger.info("get signup");
	}
	// 회원가입 post
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception {
		logger.info("post signup");
		
		String inputPassword = vo.getUserPass();
		String password = passEncoder.encode(inputPassword);
		vo.setUserPass(password);
		
		service.signup(vo);
		
		return "redirect:/";
	}
	
	// 로그인 get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		logger.info("get login");
	}
	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		MemberVO login = service.login(vo);
		HttpSession session = req.getSession();
		
		// 사용자가 입력한 패스워드와 데이터 베이스에 저장된 패스워드를 비교해서 동일하면 true, 그렇지않다면 false를 반환
		boolean passwordCheck = passEncoder.matches(vo.getUserPass(), login.getUserPass());
		
		// login값이 없는 경우는 아이디를 잘못입력한 경우
		if(login != null && passwordCheck) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null); // 세션값 제거
			rttr.addFlashAttribute("message", false); // 특정 페이지로 이동될 때 message의 값(false)를 부여
			return "redirect:/member/login"; // 특정 페이지
		}
		
		return "redirect:/";
	}
	// 로그아웃 get
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String getLogout(HttpSession session) throws Exception {
		logger.info("get logout");
		
		service.logout(session);
		
		return "redirect:/";
	}
	
}






























