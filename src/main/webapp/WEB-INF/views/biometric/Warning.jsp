<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경고창</title>
<style type="text/css">
body {
    list-style: none;
    font-family: 'OTWelcomeRA';
}

*{
    font-size: 20px;
    margin-bottom: 10px;
}
</style>
</head>

<body style="background:#53D7A5;">
<h1 style="text-align: center;">301호</h1>
<c:if test="${not empty bt301_1}">
<div style="color:red">${bt301_1} 체온에 이상이 있습니다 확인해주세요.</div>
</c:if>
<c:if test="${not empty bt301_2}">
<div style="color:red">${bt301_2} 체온에 이상이 있습니다 확인해주세요.</div>
</c:if>
<c:if test="${not empty bt301_3}">
<div style="color:red">${bt301_3} 체온에 이상이 있습니다 확인해주세요.</div>
</c:if>
</body>
</html>