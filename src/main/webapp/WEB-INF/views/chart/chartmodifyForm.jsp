<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/chartmodifyform.css">
<meta charset="UTF-8">
<title>차트 수정</title>
</head>
<body>   

	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>

<div class="chart_box">
	<h1>차트 수정</h1>
	
	<div class="chartmodify_box">
	<form action="chartmodify" method="post">
		<table class="container">
			<tr>
				<th>이름</th>
				<td class="cm_td">
					<input type="hidden" name="mname" id="inid" value = "${modifyform.mname}">
					<input type="hidden" name="db" id="inid" value = "${modifyform.db}">
					${modifyform.mname}</td>
				<th>진료과</th>
				<td>${modifyform.md}</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="hidden" name="birth" id="inrrn" value = "${modifyform.birth}">${modifyform.birth}</td>
				<th>진단명</th>
				<td><input type="text" name="dn" id="indis" value = "${modifyform.dn}"></td>
			</tr>
			<tr>
				<th>입원일</th>
				<td><input type="date" name="hospital" id="inenterd" value = "${modifyform.hospital}"></td>
				<th>퇴원일</th>
				<td><input type="date" name="exitd" id="inexitd" value = "${modifyform.exitd}"></td>
			</tr>
			<tr>
				<th>진료일</th>
				<td colspan="4"><input type="hidden"id="inoperd" value="${modifyform.disease}">${modifyform.disease}</td>
			</tr>
			<tr>
				<th>상태 및 소견</th>
				<td colspan="4" class="chart_memo"><textarea name="content" id="inoper" style="width: 798px; height: 392px;">${modifyform.content}</textarea></td>
			</tr>
		</table>
		<div class="chart_modify_btn">
		<input type="submit" value="수정">
		</div>
	</form>
	</div>
	</div>
</body>
</html>