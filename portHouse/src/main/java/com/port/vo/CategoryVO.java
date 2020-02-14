package com.port.vo;

public class CategoryVO {
	// 카테고리 테이블
	/*CREATE TABLE board_category (
		cateName VARCHAR(20) NOT NULL,
		cateCode VARCHAR(30) NOT NULL,
		cateCodeRef VARCHAR(30),
		PRIMARY KEY(cateCode),
		FOREIGN KEY(cateCodeRef) REFERENCES board_category(cateCode)
	);*/
	
	private String cateName;
	private String cateCode;
	private String cateCodeRef;
	
	private int level;
	
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	public String getCateCodeRef() {
		return cateCodeRef;
	}
	public void setCateCodeRef(String cateCodeRef) {
		this.cateCodeRef = cateCodeRef;
	}
}
