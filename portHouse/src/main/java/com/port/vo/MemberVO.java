package com.port.vo;

import java.util.Date;

public class MemberVO {
	// 회원 테이블
	/*CREATE TABLE member (
		userId		VARCHAR(50)		NOT NULL,
		userPass		VARCHAR(100)	NOT NULL,
		userName		VARCHAR(30)		NOT NULL,
		userPhone	VARCHAR(20)		NOT NULL,
		userAddr1	VARCHAR(20)		NOT NULL,
		userAddr2	VARCHAR(50)		NOT NULL,
		userAddr3	VARCHAR(50)		NOT NULL,
		regidate		TIMESTAMP		DEFAULT NOW(),
		verify		INT				DEFAULT 0,
		PRIMARY KEY(userId)
	);*/
	
	private String userId;		// 아이디
	private String userPass;	// 비밀번호
	private String userName;	// 닉네임
	private String userPhone;	// 연락처
	private String userAddr1;	// 주소
	private String userAddr2;
	private String userAddr3;
	private Date regidate;		// 가입날짜
	private int verify;			// 인증여부 (관리자)
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddr1() {
		return userAddr1;
	}
	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getUserAddr3() {
		return userAddr3;
	}
	public void setUserAddr3(String userAddr3) {
		this.userAddr3 = userAddr3;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
}
