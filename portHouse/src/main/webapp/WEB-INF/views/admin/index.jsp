<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title>관리자</title>
</head>
<body>
	<!-- header -->
	<%@ include file="include/header.jsp" %>
	<!-- //header -->
	
	<div class="section_wrap sub">
		<section class="section">
			<div class="container">
				<p class="title_shadow">admin</p>
				<div class="sub_container">
					<div class="sub_title">
						<h2>admin list</h2>
						<p class="dot"></p>
					</div>

					<table class="admin_list">
						<thead>
							<tr>
								<th class="num">번호</th>
								<th class="thumb">썸네일</th>
								<th class="category">카테고리</th>
								<th class="tit">제목</th>
								<th class="date">등록날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${boardList}" var="boardList">
								<tr>
									<td>${boardList.brdNum}</td>
									<td><a href="${pageContext.request.contextPath}/admin/board/view?n=${boardList.brdNum}"><img src="${pageContext.request.contextPath}/resources${boardList.brdThumb}"></a></td>
									<td>${boardList.cateName}</td>
									<td class="title"><a href="${pageContext.request.contextPath}/admin/board/view?n=${boardList.brdNum}">${boardList.brdName}</a></td>
									<td><fmt:formatDate value="${boardList.brdDate}" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:forEach>
						</tbody>	
					</table>
					
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<%@ include file="include/footer.jsp" %>
	<!-- //footer -->

</body>
</html>