<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>소개 페이지</title>
	<style>
		.center_line {display:none;}
	</style>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">소개</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>소개</h2>
						<p class="dot"></p>
					</div>

					<div class="about">
						<p class="content">안녕하세요 저는 웹 개발자 입니다.<br />
							주력 언어로 자바를 공부하고 있으며 파이썬 공부도 함께하고 있습니다.<br />
							<span>“기본을 충실히 하자”라는가치관</span>으로 열심히 기본부터 쌓아가고 있습니다.<br />
							저는 개발이 재미있습니다.<br />
							저는 퍼블리셔로서 웹 에이전시에서 2년의 경험이 있습니다.
						</p>
						
						<div class="about_box">
							<p class="text">집중과 선택</p>
							<p class="title"><span>노력</span>하는 개발자 <span>겸손</span>한 개발자 <span>협업을 중요</span>하게 생각하는 <span>대화</span>하는 개발자</p>
						</div>

						<div class="about_skill">
							<h3>Front-End</h3>
							<ul class="skill_list">
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
							</ul>
							<h3>Back-End</h3>
							<ul class="skill_list">
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
							</ul>
							<h3>버전관리</h3>
							<ul class="skill_list">
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
								<li><img src="${pageContext.request.contextPath}/resources/images/skill_icon01.png"></li>
							</ul>
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














