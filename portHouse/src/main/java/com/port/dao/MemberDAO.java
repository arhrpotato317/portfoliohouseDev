package com.port.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.port.vo.MemberVO;

@Repository
public class MemberDAO {
	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "com.port.mappers.memberMapper";
	
	// 회원가입
	public void signup(MemberVO vo) throws Exception {
		sql.insert(namespace + ".signup", vo);
	}
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".login", vo);
	}
	
	// 테스트 계정
	public MemberVO testUser(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".testUser", vo);
	}
	public MemberVO testAdmin(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".testAdmin", vo);
	}
}
