package com.port.service;

import java.util.List;

import com.port.vo.BoardVO;
import com.port.vo.BoardViewVO;
import com.port.vo.CategoryVO;

public interface AdminService {
	// 카테고리
	public List<CategoryVO> category() throws Exception;
	
	// 게시물 등록
	public void register(BoardVO vo) throws Exception;
	
	// 게시물 목록
	public List<BoardVO> boardList() throws Exception;
	
	// 게시물 상세 + 카테고리
	public BoardViewVO boardView(int brdNum) throws Exception;
	
	// 게시물 수정
	public void boardModify(BoardVO vo) throws Exception;
	
	// 게시물 삭제
	public void boardDelete(int brdNum) throws Exception;
}
