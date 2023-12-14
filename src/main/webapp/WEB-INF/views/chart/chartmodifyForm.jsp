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
				<th>이름 </th>
				<td><input type="hidden" name="cname" id="inid" value = "${modifyform.cname}">${modifyform.cname}</td>
				<th>환자코드</th>
				<td><select id="select" name="dcode">
					<option selected disabled>${modifyform.dcode}</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><input type="hidden" name="rrn" id="inrrn" value = "${modifyform.rrn}">${modifyform.rrn}</td>
				<th>병명</th>
				<td><input type="text" name="disease" id="indis" value = "${modifyform.disease}"></td>
			</tr>
			<tr>
				<th>입원날짜</th>
				<td><input type="date" name="enterd" id="inenterd" value = "${modifyform.enterd}"></td>
				<th>퇴원날짜</th>
				<td><input type="date" name="exitd" id="inexitd" value = "${modifyform.exitd}"></td>
			</tr>
			<tr>
				<th>진료날짜</th>
				<td colspan="4"><input type="date" name="operd" id="inoperd" value="${modifyform.operd}"></td>
			</tr>
			<tr>
				<th>상태 및 소견</th>
				<td colspan="4" class="chart_memo"><textarea cols="" name="operation" id="inoper" style="width: 798px; height: 392px;">${modifyform.operation}</textarea></td>
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