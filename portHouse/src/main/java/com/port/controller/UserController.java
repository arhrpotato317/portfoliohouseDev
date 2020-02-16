package com.port.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.port.service.UserService;
import com.port.vo.BoardViewVO;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;

	// 포트폴리오
	@RequestMapping(value = "/portfolio", method = RequestMethod.GET)
	public void getUserPortfolio(Model model) throws Exception {
		logger.info("get user portfolio");
		
		List<BoardViewVO> userAll = service.userAll();
		model.addAttribute("userAll", userAll);
	}
	
	// 카테고리별 게시물 리스트
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getUserList(@RequestParam("c") int cateCode, @RequestParam("l") int level, Model model) throws Exception {
		logger.info("get user list");
		
		List<BoardViewVO> userList = service.userList(cateCode, level);
		model.addAttribute("userList", userList);
	}
	
}






























