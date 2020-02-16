package com.port.vo;

import java.util.Date;

public class BoardViewVO {
	
	private int brdNum;			// 게시물 번호
	private String brdName;		// 제목
	private String cateCode;	// 분류(카테고리)
	private String brdLink;		// 링크정보
	private String brdDes1;		// 상세설명
	private String brdDes2;		// 제작설명
	private String brdDes3;		// 내용 이미지 등록
	private String brdImg;		// 이미지 등록 -> 썸네일로 저장
	private Date brdDate;		// 등록날짜
	
	private String cateCodeRef;
	private String cateName;
	
	private String brdThumb;	// 썸네일 등록
	
	public String getBrdDes3() {
		return brdDes3;
	}
	public void setBrdDes3(String brdDes3) {
		this.brdDes3 = brdDes3;
	}
	public String getBrdThumb() {
		return brdThumb;
	}
	public void setBrdThumb(String brdThumb) {
		this.brdThumb = brdThumb;
	}
	public String getCateCodeRef() {
		return cateCodeRef;
	}
	public void setCateCodeRef(String cateCodeRef) {
		this.cateCodeRef = cateCodeRef;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public int getBrdNum() {
		return brdNum;
	}
	public void setBrdNum(int brdNum) {
		this.brdNum = brdNum;
	}
	public String getBrdName() {
		return brdName;
	}
	public void setBrdName(String brdName) {
		this.brdName = brdName;
	}
	public String getCateCode() {
		return cateCode;
	}
	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	public String getBrdLink() {
		return brdLink;
	}
	public void setBrdLink(String brdLink) {
		this.brdLink = brdLink;
	}
	public String getBrdDes1() {
		return brdDes1;
	}
	public void setBrdDes1(String brdDes1) {
		this.brdDes1 = brdDes1;
	}
	public String getBrdDes2() {
		return brdDes2;
	}
	public void setBrdDes2(String brdDes2) {
		this.brdDes2 = brdDes2;
	}
	public String getBrdImg() {
		return brdImg;
	}
	public void setBrdImg(String brdImg) {
		this.brdImg = brdImg;
	}
	public Date getBrdDate() {
		return brdDate;
	}
	public void setBrdDate(Date brdDate) {
		this.brdDate = brdDate;
	}
}
