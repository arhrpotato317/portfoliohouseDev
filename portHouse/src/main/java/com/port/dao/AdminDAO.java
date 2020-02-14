package com.port.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.port.vo.CategoryVO;

@Repository
public class AdminDAO {
	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "com.port.mappers.adminMapper";
	
	// 카테고리
	public List<CategoryVO> category() throws Exception {
		return sql.selectList(namespace + ".category");
	}
	
}
