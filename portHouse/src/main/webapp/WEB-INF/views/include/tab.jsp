<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
	<ul class="tab_list">
		<li><a href="${pageContext.request.contextPath}/user/portfolio">모두보기</a></li>
		<li><a href="${pageContext.request.contextPath}/user/list?c=100&l=1">개발</a>
			<ul class="tab_low">
				<li><a href="${pageContext.request.contextPath}/user/list?c=101&l=2">자바</a></li>
				<!-- <li><a href="${pageContext.request.contextPath}/user/list?c=102&l=2">파이썬</a></li> -->
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/user/list?c=200&l=1">퍼블리싱</a></li>
	</ul>
</body>
</html>