<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/chartwriteform.css">
<meta charset="UTF-8">
<title>차트 작성</title>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="chart_box">
	<h1>차트 작성</h1>
	
	<div class="chartwrite_box">
	<form action="chartwrite" method="post">
		<table class="container">
			<tr>
				<th>이름 </th>
				<td><input type="text" name="cname" id="inid" placeholder="환자 이름을 입력해주세요."></td>
				<th>환자코드</th>
				<td><select id="select" name="dcode">
					<option selected disabled>환자 코드를 선택하세요.</option>
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
				<td><input type="text" name="rrn" id="inrrn" placeholder="환자 주민번호를 입력해주세요."></td>
				<th>병명</th>
				<td><input type="text" name="disease" id="indis" placeholder="환자 병명을 입력해주세요."></td>
			</tr>
			<tr>
				<th>입원날짜</th>
				<td><input type="date" name="enterd" id="inenterd"></td>
				<th>퇴원날짜</th>
				<td><input type="date" name="exitd" id="inexitd"></td>
			</tr>
			<tr>
				<th>진료날짜</th>
				<td colspan="4"><input type="date" name="operd" id="inoperd"></td>
			</tr>
			<tr>
				<th>상태 및 소견</th>
				<td colspan="4" class="chart_memo"><textarea cols="" name="operation" id="inoper" style="width: 798px; height: 392px;"></textarea></td>
			</tr>		
		</table>
		<div class="chart_write_btn">
		<input type="submit" value="작성완료">
		</div>
	</form>
	</div>
	</div>
</body>
</html>
