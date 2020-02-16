<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
	<ul class="tab_list">
		<li><a href="/user/portfolio">all</a></li>
		<li><a href="/user/list?c=100&l=1">develop</a>
			<ul class="tab_low">
				<li><a href="/user/list?c=101&l=2">java</a></li>
				<li><a href="/user/list?c=102&l=2">python</a></li>
			</ul>
		</li>
		<li><a href="/user/list?c=200&l=1">publishing</a></li>
	</ul>
</body>
</html>