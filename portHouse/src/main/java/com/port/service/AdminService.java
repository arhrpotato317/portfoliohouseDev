package com.port.service;

import java.util.List;

import com.port.vo.BoardVO;
import com.port.vo.CategoryVO;

public interface AdminService {
	// 카테고리
	public List<CategoryVO> category() throws Exception;
	
	// 게시물 등록
	public void register(BoardVO vo) throws Exception;
	
	// 게시물 목록
	public List<BoardVO> boardList() throws Exception;
}
