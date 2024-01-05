<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL을 사용하기 위한 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>온도</h1>
	
	<!-- 
		컨트롤에 저장한 temple을 items 으로 표현 
		var="temple"에 저장 후 뿌리기?
	-->
	<c:forEach items="${temple}" var="temple" varStatus="status">
	<ul>
	<li><c:out value="${status.0}"></c:out></li>
	</ul>
	</c:forEach>
</body>
</html>