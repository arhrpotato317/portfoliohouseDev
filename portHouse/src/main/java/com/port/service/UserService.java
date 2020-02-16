package com.port.service;

import java.util.List;

import com.port.vo.BoardViewVO;

public interface UserService {
	// 게시물 목록 ALL
	public List<BoardViewVO> userAll() throws Exception;
		
	// 카테고리별 게시물 리스트
	public List<BoardViewVO> userList(int cateCode, int level) throws Exception;
	
	// 게시물 상세 페이지
	public BoardViewVO userView(int brdNum) throws Exception;
}
