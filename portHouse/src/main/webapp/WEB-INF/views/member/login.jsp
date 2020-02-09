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
				<p class="title_shadow">login</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>login</h2>
						<p class="dot"></p>
					</div>

					<!-- 디자인 작업 필요 -->
					<form role="form" method="post" autocomplete="off">
					  <div class="input_area">
					   <label for="userId">아이디</label>
					   <input type="email" id="userId" name="userId" required="required" />      
					  </div>
					  
					  <div class="input_area">
					   <label for="userPass">패스워드</label>
					   <input type="password" id="userPass" name="userPass" required="required" />      
					  </div>
					       
					  <button type="submit" id="signin_btn" name="signin_btn">로그인</button>
					  
					  <c:if test="${message == false}">
					   <p style="color:#f00;">로그인에 실패했습니다.</p>
					  </c:if>
					  
					 </form>
					 <a href="/member/signup">회원가입</a>
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
