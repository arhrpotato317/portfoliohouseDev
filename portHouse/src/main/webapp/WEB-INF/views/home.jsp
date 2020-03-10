<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>포트폴리오 사이트</title>
	<style>
		#footer {
			position: fixed;
		    bottom: 0;
		    left: 0;
		    width: 100%;
		}
		@media (max-width: 420px) {
			#footer {
			    position: unset;
			}
		}
	</style>
</head>
<body>
	<!-- header -->
	<%@ include file="include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap main">
		<section class="section">
			<div class="container">
				<div class="main_left">
					<div class="img_box">
						<img src="${pageContext.request.contextPath}/resources/images/main_left.png">
					</div>
				</div>
				<div class="main_right">
					<div class="main_title">
						<h1>안녕하세요. 웹 개발자 입니다.</h1>
						<p>Web<br />developer</p>
					</div>
					<p class="main_text">자바 언어를 주력으로 파이썬을 공부하고있습니다. 열심히 하겠습니다.</p>
					<a href="${pageContext.request.contextPath}/member/test?n=0" class="button">테스트 일반 사용자</a>
					<a href="${pageContext.request.contextPath}/member/test?n=9" class="button">테스트 관리자</a>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<%@ include file="include/footer.jsp" %>
	<!-- //footer -->
</body>
</html>
