package com.port.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.port.dao.AdminDAO;
import com.port.vo.BoardVO;
import com.port.vo.BoardViewVO;
import com.port.vo.CategoryVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	private AdminDAO dao;

	// 카테고리
	@Override
	public List<CategoryVO> category() throws Exception {
		return dao.category();
	}

	// 게시물 등록
	@Override
	public void register(BoardVO vo) throws Exception {
		dao.register(vo);
	}

	// 게시물 목록
	@Override
	public List<BoardViewVO> boardList() throws Exception {
		return dao.boardList();
	}

	// 게시물 상세 + 카테고리
	@Override
	public BoardViewVO boardView(int brdNum) throws Exception {
		return dao.boardView(brdNum);
	}

	// 게시물 수정
	@Override
	public void boardModify(BoardVO vo) throws Exception {
		dao.boardModify(vo);
	}

	// 게시물 삭제
	@Override
	public void boardDelete(int brdNum) throws Exception {
		dao.boardDelete(brdNum);
	}
}
