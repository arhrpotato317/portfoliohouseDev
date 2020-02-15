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
						<h2>admin</h2>
						<p class="dot"></p>
					</div>

					<!-- 디자인 작업 필요 -->
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>썸네일</th>
								<th>카테고리</th>
								<th>제목</th>
								<th>등록날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${boardList}" var="boardList">
								<tr>
									<td>${boardList.brdNum}</td>
									<td><img src="${boardList.brdThumb}"></td>
									<td>${boardList.cateName}</td>
									<td><a href="/admin/board/view?n=${boardList.brdNum}">${boardList.brdName}</a></td>
									<td><fmt:formatDate value="${boardList.brdDate}" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- //디자인 작업 필요 -->
					
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<%@ include file="include/footer.jsp" %>
	<!-- //footer -->

</body>
</html>