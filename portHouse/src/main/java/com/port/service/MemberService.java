package com.port.service;

import javax.servlet.http.HttpSession;

import com.port.vo.MemberVO;

public interface MemberService {
	// 회원가입
	public void signup(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	// 로그아웃
	public void logout(HttpSession session) throws Exception;
	
	// 테스트 계정
	public MemberVO testUser(MemberVO vo) throws Exception;
	public MemberVO testAdmin(MemberVO vo) throws Exception;
}
