package com.port.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.port.dao.MemberDAO;
import com.port.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO dao;

	// 회원가입
	@Override
	public void signup(MemberVO vo) throws Exception {
		dao.signup(vo);
	}

	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	// 로그아웃
	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();
	}

	// 테스트 계정
	@Override
	public MemberVO testUser(MemberVO vo) throws Exception {
		return dao.testUser(vo);
	}
	@Override
	public MemberVO testAdmin(MemberVO vo) throws Exception {
		return dao.testAdmin(vo);
	}

}
