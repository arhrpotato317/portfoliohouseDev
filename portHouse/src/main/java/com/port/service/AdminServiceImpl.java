package com.port.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.port.dao.AdminDAO;
import com.port.vo.BoardVO;
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

	@Override
	public void register(BoardVO vo) throws Exception {
		dao.register(vo);
	}
}
