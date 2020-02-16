package com.port.service;

import java.util.List;

import com.port.vo.BoardViewVO;

public interface UserService {
	// 카테고리별 게시물 리스트
	public List<BoardViewVO> userList(int cateCode, int level) throws Exception;
}
