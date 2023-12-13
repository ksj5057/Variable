<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차트 수정</title>
</head>
<body>   

	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>

<form action="chartmodify" method = "post">
	<table>
		<tr>
			<td>이름</td>
			<td><input type = "hidden" name = "cname" value = "${modifyForm.cname}">${modifyForm.cname}</td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td><input type = "hidden" name = "rrn" value = "${modifyForm.rrn}">${modifyForm.rrn}</td>
		</tr>
		<tr>
			<td>병명</td>
			<td><input type = "text" name = "disease" value = "${modifyForm.disease}"></td>
		</tr>
		<tr>
			<td>수술명</td>
			<td><input type = "text" name = "operation" value = "${modifyForm.operation}" ></td>
		</tr>
		<tr>
			<td>수술날짜</td>
			<td><input type = "date" name = "operd" value = "${modifyForm.operd}"></td>
		</tr>
		<tr>
			<td>입원날짜</td>
			<td><input type = "date" name = "enterd" value = "${modifyForm.enterd}"></td>
		</tr>
		<tr>
			<td>퇴원날짜</td>
			<td><input type = "date" name = "exitd" value = "${modifyForm.exitd}"></td>
		</tr>
		<tr> 
			<td>환자코드</td>
			<td><input type = "text" name = "dcode" value = "${modifyForm.dcode}"></td>
		</tr>
		<tr>
			<td><input type = "hidden" name = "cno" value = "${modifyForm.cno}"></td>
		</tr>
		<tr>
			<td colspan = "2"><input type = "submit" value = "작성"></td>
		</tr>
		
	</table>
</form>
</body>
</html>