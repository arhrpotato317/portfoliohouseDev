<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>회원가입</title>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">sign up</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>sign up</h2>
						<p class="dot"></p>
					</div>

					<!-- 디자인 작업 필요 -->
					<form role="form" method="post" autocomplete="off">
					  <div class="input_area">
					   <label for="userId">아이디</label>
					   <input type="email" id="userId" name="userId" placeholder="example@email.com" required="required" />      
					  </div>
					  
					  <div class="input_area">
					   <label for="userPass">패스워드</label>
					   <input type="password" id="userPass" name="userPass" required="required" />      
					  </div>
					  
					  <div class="input_area">
					   <label for="userName">닉네임</label>
					   <input type="text" id="userName" name="userName" placeholder="닉네임을 입력해주세요" required="required" />      
					  </div>
					  
					  <div class="input_area">
					   <label for="userPhone">연락처</label>
					   <input type="text" id="userPhone" name="userPhone" placeholder="연락처를 입력해주세요" required="required" />      
					  </div>
					  
					  <button type="submit" id="signup_btn" name="signup_btn">회원가입</button>
					  
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
