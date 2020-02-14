package com.port.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.port.vo.BoardVO;
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
	
	// 게시물 등록
	public void register(BoardVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	// 게시물 목록
	public List<BoardVO> boardList() throws Exception {
		return sql.selectList(namespace + ".boardList");
	}
	
	// 게시물 상세
	public BoardVO boardView(int brdNum) throws Exception {
		return sql.selectOne(namespace + ".boardView", brdNum);
	}
	
}
