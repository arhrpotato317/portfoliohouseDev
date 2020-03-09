<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>로그인</title>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">로그인</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>로그인</h2>
						<p class="dot"></p>
					</div>

					<div class="login_wrap">
						<form role="form" method="post" autocomplete="off">
							<div class="input_box userId">
								<input type="email" id="userId" name="userId" placeholder="E-MAIL" required="required" />
							</div>
							<div class="input_box userPass">
					   			<input type="password" id="userPass" name="userPass" placeholder="PASSWORD" required="required" />
							</div>
					
							<button type="submit" class="login_btn" id="signup_btn" name="signup_btn">로그인</button>
					
							<c:if test="${message == false}">
								<p style="color:#f00;">로그인에 실패했습니다.</p>
							</c:if>
						</form>
					
						<div class="go_signup">
							<p class="text">회원이 되시면 더 많은<br>게시물을 보실 수 있습니다.</p>
							<a href="${pageContext.request.contextPath}/member/signup" class="link">회원가입 ></a>
						</div>
					</div>
					
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<%@ include file="../include/footer.jsp" %>
	<!-- //footer -->
</body>
</html>
