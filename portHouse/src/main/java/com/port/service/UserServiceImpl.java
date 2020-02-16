package com.port.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.port.dao.UserDAO;
import com.port.vo.BoardViewVO;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	private UserDAO dao;

	// 카테고리별 게시물 리스트
	@Override
	public List<BoardViewVO> userList(int cateCode, int level) throws Exception {
		int cateCodeRef = 0;	// 카테고리 참조 코드
				 
		if(level == 1) {	//1차 분류 
			cateCodeRef = cateCode;
			return dao.userList(cateCode, cateCodeRef);
		} else {	//2차 분류
			return dao.userList(cateCode);
		}
	}
}
