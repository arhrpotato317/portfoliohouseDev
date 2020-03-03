<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
	<script src="${pageContext.request.contextPath}/resources/js/jquery.1.12.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/site_function.js"></script>
</head>
<body>
	<div class="fixed-bg-circle"></div>

	<!-- header -->
	<header id="header">
		<div class="in_header">
			<div class="logo">
				<div class="img_box">
					<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
				</div>
			</div>

			<!-- menu button -->
			<div class="menu-btn-toggle pointer">
				<span class="first-bar"></span>
				<span class="second-bar"></span>
				<span class="third-bar"></span>
			</div>	
		</div>

		<!-- menu list -->
		<div class="inner">
			<ul class="menu_list">
				<c:if test="${member == null}">
					<li><a href="${pageContext.request.contextPath}/member/login">login</a></li>
					<li><a href="${pageContext.request.contextPath}/member/signup">sign up</a></li>
				</c:if>
				<c:if test="${member != null}">
					<c:if test="${member.verify == 9}">
						<li><a href="${pageContext.request.contextPath}/admin/index">admin</a></li>
					</c:if>
					<li><a href="">about</a></li>
					<li><a href="${pageContext.request.contextPath}/user/portfolio">portfolio</a></li>
					<li><a href="https://arhrpotato317.github.io/" target="_blank">blog</a></li>
					<li><a href="${pageContext.request.contextPath}/member/logout">logout</a></li>
				</c:if>
			</ul>
		</div>
	</header>
	<!-- //header -->
	
	<!-- page fix -->
	<div class="sns_icon">
		<a href="https://github.com/arhrpotato317/portfoliohouseDev" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/github_icon.png"></a>
		<a href=""><img src="${pageContext.request.contextPath}/resources/images/mail_icon.png"></a>
	</div>

	<div class="circle_motion">
		<div class="circle_left">
			<div class="img_box">
				<img src="${pageContext.request.contextPath}/resources/images/page_circle.png">
			</div>
		</div>
		<div class="circle_right">
			<div class="img_box">
				<img src="${pageContext.request.contextPath}/resources/images/page_circle.png">
			</div>
		</div>
	</div>

	<p class="center_line"></p>
	<!-- //page fix -->
</body>
</html>