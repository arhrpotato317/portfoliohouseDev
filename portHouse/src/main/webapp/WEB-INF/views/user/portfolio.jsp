<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>포트폴리오</title>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">포트폴리오</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>포트폴리오</h2>
						<p class="dot"></p>
					</div>

					<div class="work">
						<!-- tab -->
						<%@ include file="../include/tab.jsp" %>
						<!-- //tab -->

						<ul class="work_list">
							<c:forEach items="${userAll}" var="userAll">
								<li>
									<a href="${pageContext.request.contextPath}/user/view?n=${userAll.brdNum}">
										<div class="img_box">
											<img src="${userAll.brdThumb}">
										</div>
										<div class="list_hover">
											<div class="text_box">
												<p class="category">${userAll.cateName}</p>
											<h3 class="title">${userAll.brdName}</h3>
											<p class="text">${userAll.brdDes1}</p>
											</div>
										</div>
									</a>
								</li>
							</c:forEach>
						</ul>
						
						<!-- 
						<nav class="navigation pagination" role="navigation">
							<div class="nav-links">
								<a class="prev" href="">prev</a>
								<span aria-current="page" class="page-numbers current">1</span>
								<a class="page-numbers" href="">2</a>
								<a class="page-numbers" href="">3</a>
								<a class="page-numbers" href="">4</a>
								<a class="page-numbers" href="">5</a>
								<a class="next" href="">next</a>
							</div>
						</nav>
						 -->
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
