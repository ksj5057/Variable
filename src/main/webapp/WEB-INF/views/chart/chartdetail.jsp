<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/chartdetail.css">
<meta charset="UTF-8">
<title>차트 작성</title>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="chart_box">
	<h1>차트 상세내역</h1>
	
	<div class="chartwrite_box">
		<table class="container">
			<tr>
				<th>이름 </th>
				<td>${chartdetail.cname}</td>
				<th>환자코드</th>
				<td>${chartdetail.dcode}</td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td>${chartdetail.rrn}</td>
				<th>병명</th>
				<td>${chartdetail.disease}</td>
			</tr>
			<tr>
				<th>입원날짜</th>
				<td>
					<c:choose>
						<c:when test = "${chartdetail.enterd eq ''}">
							해당없음 
						</c:when>
						<c:otherwise>
							${chartdetail.enterd}
						</c:otherwise>
					</c:choose>
				</td>
				<th>퇴원날짜</th>
				<td>
					<c:choose>
						<c:when test = "${chartdetail.exitd eq ''}">
							해당없음 
						</c:when>
						<c:otherwise>
							${chartdetail.exitd}
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<th>진료날짜</th>
				<td colspan="4">${chartdetail.operd}</td>
			</tr>
			<tr>
				<th>상태 및 소견</th>
				<td colspan="4" class="chart_memo">${chartdetail.operation}</td>
			</tr>		
		</table>
		<div class="chart_write_btn">
		<a href = "chartlist"><input type="button" value="차트목록"></a>
		</div>
	</div>
	</div>
</body>
</html>
