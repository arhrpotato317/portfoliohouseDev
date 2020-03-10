<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
	<script src="${pageContext.request.contextPath}/resources/js/jquery.1.12.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/site_function.js"></script>
</head>
<body>
	<div class="fixed-bg-circle"></div>

	<!-- header -->
	<header id="header">
		<div class="in_header">
			<div class="sub-bg"></div>
			<div class="logo">
				<div class="img_box">
					<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
				</div>
			</div>
			
			<div class="nav">
	            <div class="nav-icon"><div></div></div>
	            <ul class="menu_list navbar">
					<c:if test="${member == null}">
						<li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
						<li><a href="${pageContext.request.contextPath}/member/signup">회원가입</a></li>
					</c:if>
					<c:if test="${member != null}">
						<c:if test="${member.verify == 9}">
							<li><a href="${pageContext.request.contextPath}/admin/index">관리자 화면</a></li>
						</c:if>
						<li><a href="${pageContext.request.contextPath}/user/about">소개</a></li>
						<li><a href="${pageContext.request.contextPath}/user/portfolio">포트폴리오</a></li>
						<li>
							<a href="https://arhrpotato317.github.io/" target="_blank" id="blog_btn">블로그</a>
							<script>
								$("#blog_btn").click(function() {
									alert("블로그 사이트로 이동합니다.");
								});
							</script>
						</li>
						<li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
						<li class="whoUser">${member.userId} 님</li>
					</c:if>
				</ul>
	        </div>
		</div>
	</header>
	<!-- //header -->
	
	<!-- page fix -->
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