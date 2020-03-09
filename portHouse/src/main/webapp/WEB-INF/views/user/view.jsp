<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>포트폴리오 상세화면</title>
	<style>
		.center_line {display:none;}
	</style>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<form role="form" method="post" autocomplete="off">
		<input type="hidden" name="n" value="${userView.brdNum}">
	
		<div class="section_wrap detail">
			<section class="section row01">
				<div class="detail_container">
					<div class="title_box">
						<p class="category">${userView.cateName}</p>
						<h2>${userView.brdName}</h2>
						<p class="content">${userView.brdDes1}</p>
						<a href="${userView.brdLink}" class="button" target="_blank">사이트 바로가기</a>
					</div>
	
					<div class="detail_text">
						<p class="text">${userView.brdDes2}</p>
					</div>
				</div>
			</section>
	
			<section class="section row02">
				<div class="detail_container">
					<div class="img_box">
						<div class="top_minus">${userView.brdDes3}</div>
					</div>
				</div>
			</section>
		</div>
	</form>
	
	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
	<!-- //footer -->
	
</body>
</html>














