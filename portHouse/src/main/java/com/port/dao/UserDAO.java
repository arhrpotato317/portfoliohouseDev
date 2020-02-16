package com.port.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.port.vo.BoardViewVO;

@Repository
public class UserDAO {
	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "com.port.mappers.userMapper";
	
	// 게시물 목록 ALL
	public List<BoardViewVO> userAll() throws Exception {
		return sql.selectList(namespace + ".listall");
	}
	
	// 카테고리별 게시물 리스트 : 1차 분류
	public List<BoardViewVO> userList(int cateCode, int cateCodeRef) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		 
		 map.put("cateCode", cateCode);
		 map.put("cateCodeRef", cateCodeRef);
		 
		 return sql.selectList(namespace + ".listone", map);
	}
	
	// 카테고리별 게시물 리스트 : 2차 분류
	public List<BoardViewVO> userList(int cateCode) throws Exception {
		return sql.selectList(namespace + ".listtwo", cateCode);
	}
	
	// 게시물 상세 페이지
	public BoardViewVO userView(int brdNum) throws Exception {
		return sql.selectOne("com.port.mappers.adminMapper" + ".boardView", brdNum);
	}
}
