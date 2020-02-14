package com.port.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.port.service.AdminService;
import com.port.vo.CategoryVO;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService service;
	
	// 패스워드 암호화 사용
	@Autowired
	BCryptPasswordEncoder passEncoder;

	// 관리자 화면
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void getIndex() throws Exception {
		logger.info("get index");
	}
	
	// 게시물 등록
	@RequestMapping(value = "/board/register", method = RequestMethod.GET)
	public void getBoardRegister(Model model) throws Exception {
		logger.info("get board register");
		
		List<CategoryVO> category = service.category();
		model.addAttribute("category", JSONArray.fromObject(category));
	}
	
}






























