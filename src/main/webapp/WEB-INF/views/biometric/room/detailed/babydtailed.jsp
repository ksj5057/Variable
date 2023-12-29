<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린대학병원 | 상세보기</title>
</head>
<body>

<jsp:include page="../../../include/header.jsp"></jsp:include>

<!-- 이미지 넣기 -->
<table border="1">	
	<tr>
		<td>
		${'name'} 아기
		</td>
		</tr>
		<tr>
		<td>
		부모님 연락처 <span>${'010-8888-8888'}</span>
		</td>
		</tr>
		<tr>
		<td>
		입원일 :
		</td>
		</tr>
		</table>
		
	<span>측정 기록</span>
</body>
</html>