package com.port.service;

import java.util.List;

import com.port.vo.CategoryVO;

public interface AdminService {
	// 카테고리
	public List<CategoryVO> category() throws Exception;
}
