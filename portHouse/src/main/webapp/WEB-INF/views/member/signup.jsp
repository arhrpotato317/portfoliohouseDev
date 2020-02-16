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

					<div class="login_wrap">
						<form role="form" method="post" autocomplete="off">
							<div class="input_box userId">
								<input type="email" id="userId" name="userId" placeholder="E-MAIL" required="required" />
							</div>
							<div class="input_box userPass">
					   			<input type="password" id="userPass" name="userPass" placeholder="PASSWORD" required="required" />
							</div>
							<div class="input_box userName">
								<input type="text" id="userName" name="userName" placeholder="NAME" required="required" />
							</div>
							<div class="input_box userPhone">
								<input type="text" id="userPhone" name="userPhone" placeholder="PHONE" required="required" />
							</div>
					
							<button type="submit" class="login_btn" id="signup_btn" name="signup_btn">sign up</button>
						</form>
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
