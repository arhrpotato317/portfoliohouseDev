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
						<p class="content">
							안녕하세요! 저는 웹 개발자 Ara입니다.<br />
							<span>웹 에이전시에서 퍼블리셔</span>로서 실무경력을 쌓았으며, 백엔드에서 많이 사용하고 있는 자바 언어로 프로그래밍에 입문하여 4개월의 <span>프로젝트 참여경험</span>이 있습니다.<br />
							현재는 <span>실력 있는 웹 개발자</span>를 목표로 자바와 스프링 프레임워크를 공부하고 있습니다.
						</p>
						<p class="content">
							최종적으로는 어떠한 개발 환경에서도 다양한 클라이언트의 요구사항에 대응할 수 있는 프로그래머가 되고 싶습니다.
						</p>
						
						<div class="about_box">
							<p class="text">집중과 선택</p>
							<p class="title"><span>노력</span>하는 개발자 <span>겸손</span>한 개발자 <span>협업을 중요</span>하게 생각하는 <span>대화</span>하는 개발자</p>
						</div>
						
						<p class="content">
							하나의 소프트웨어를 만들기 위해서는 기획, 디자인, 개발 각 분야의 전문가들과 함께 <span>협업</span>하여 클라이언트의 요구에 부응하는 최적의 결과물에 도달할 수 있도록 <span>함께</span> 노력해야한다고 생각합니다.
						</p>
						<p class="content">
							분야가 다르더라도 서로에 대한 이해를 위해 <span>대화를 하며 발맞춰 나가는 개발자</span>가 되겠습니다.
						</p>

						<div class="about_skill">
							<h3>사용 기술</h3>
							<ul class="skill_list">
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill01.png">
										<div class="box_detail">
											<p class="tit">GITHUB</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill02.png">
										<div class="box_detail">
											<p class="tit">JAVA</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill03.png">
										<div class="box_detail">
											<p class="tit">SPRING</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill04.png">
										<div class="box_detail">
											<p class="tit">PYTHON</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill05.png">
										<div class="box_detail">
											<p class="tit">ORACLE</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill06.png">
										<div class="box_detail">
											<p class="tit">MYSQL</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill07.png">
										<div class="box_detail">
											<p class="tit">MONGODB</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill08.png">
										<div class="box_detail">
											<p class="tit">HTML5</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill09.png">
										<div class="box_detail">
											<p class="tit">CSS3</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill10.png">
										<div class="box_detail">
											<p class="tit">JAVASCRIPT</p>
										</div>
									</div>
								</li>
								<li>
									<div class="grade_box">
										<img src="${pageContext.request.contextPath}/resources/images/skill11.png">
										<div class="box_detail">
											<p class="tit">JQUERY</p>
										</div>
									</div>
								</li>
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














