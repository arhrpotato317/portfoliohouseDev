<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>관리자</title>
	<style>
		.center_line {display:none;}
	</style>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<form role="form" method="post" autocomplete="off">
		<input type="hidden" name="n" value="${boardView.brdNum}">
	
		<div class="section_wrap detail">
			<section class="section row01">
				<div class="detail_container">
					<div class="title_box">
						<p class="category">${boardView.cateName}</p>
						<h2>${boardView.brdName}</h2>
						<p class="content">${boardView.brdDes1}</p>
						<a href="${boardView.brdLink}" class="button" target="_blank">${boardView.brdLink}</a>
					</div>
	
					<div class="detail_text">
						<p class="text">${boardView.brdDes2}</p>
					</div>
	
					<div class="admin_btn">
						<button type="button" class="modify_btn" id="modify_btn">수정</button>
						<button type="button" class="delete_btn" id="delete_btn">삭제</button>
						<script>
							var formObj = $("form[role='form']");
							$("#modify_btn").click(function() {
								formObj.attr("action", "${pageContext.request.contextPath}/admin/board/modify");
								formObj.attr("method", "get");
								formObj.submit();
							});
							$("#delete_btn").click(function() {
								// 사용자에게 true/false값을 받을 수 있는 다이얼로그
								var con = confirm("정말로 삭제하시겠습니까?");
								
								if(con) {
									formObj.attr("action", "${pageContext.request.contextPath}/admin/board/delete");
									formObj.submit();
								}
							});
						</script>
					</div>
				</div>
			</section>
	
			<section class="section row02">
				<div class="detail_container">
					<div class="img_box">
						<div class="top_minus">${boardView.brdDes3}</div>
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














