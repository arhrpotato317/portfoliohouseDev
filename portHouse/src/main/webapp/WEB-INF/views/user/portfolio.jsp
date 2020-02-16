<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>portfolio</title>
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">portfolio</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>portfolio</h2>
						<p class="dot"></p>
					</div>

					<div class="work">
						<!-- tab -->
						<%@ include file="../include/tab.jsp" %>
						<!-- //tab -->

						<ul class="work_list">
							<c:forEach items="${userList}" var="userList">
								<li>
									<a href="/user/view?n=${userList.brdNum}">
										<div class="img_box">
											<img src="${userList.brdThumb}">
										</div>
										<div class="list_hover">
											<div class="text_box">
												<p class="category">${userList.cateName}</p>
											<h3 class="title">${userList.brdName}</h3>
											<p class="text">${userList.brdDes1}</p>
											</div>
										</div>
									</a>
								</li>
							</c:forEach>
						</ul>

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