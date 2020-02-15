<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>관리자</title>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">admin</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>admin</h2>
						<p class="dot"></p>
					</div>

					<!-- 디자인 작업 필요 -->
					<form role="form" method="post" autocomplete="off">
						<input type="hidden" name="n" value="${boardView.brdNum}">
						<label>1차 카테고리</label>
						<span class="category1"></span>
						<label>2차 카테고리</label>
						<span class="category2">${boardView.cateCode}</span>
						
						<div class="input_box">
							<label for="brdName">게시물 제목</label>
							<span>${boardView.brdName}</span>
						</div>
						<div class="input_box">
							<label for="brdLink">게시물 링크</label>
							<span>${boardView.brdLink}</span>
						</div>
						<div class="input_box">
							<label for="brdDes1">상세 설명</label>
							<span>${boardView.brdDes1}</span>
						</div>
						<div class="input_box">
							<label for="brdDes2">제작 설명</label>
							<span>${boardView.brdDes2}</span>
						</div>
						
						<button type="button" id="modify_btn">수정</button>
						<button type="button" id="delete_btn">삭제</button>
						<script>
							var formObj = $("form[role='form']");
							$("#modify_btn").click(function() {
								formObj.attr("action", "/admin/board/modify");
								formObj.attr("method", "get");
								formObj.submit();
							});
							$("#delete_btn").click(function() {
								// 사용자에게 true/false값을 받을 수 있는 다이얼로그
								var con = confirm("정말로 삭제하시겠습니까?");
								formObj.attr("action", "/admin/board/delete");
								formObj.submit();
							});
						</script>
					</form>
					<!-- //디자인 작업 필요 -->
					
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
	<!-- //footer -->
	
</body>
</html>














