<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "/resources/css/chartlist.css">
<script src = "/resources/js/chart/chartlist.js"></script>

<meta charset="UTF-8">
<title>차트 리스트</title>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include><br>
	
<div class="headline"><h2>차트 리스트 (관리자 전용)</h2></div>

<form id="searchform" action="/chart/chartlist" method="get">

	<select name="type" style= "border-radius : 20px">
		<option value="T">이름</option>
		<option value="C">환자코드번호</option>
	</select>
	<input type="text" name="keyword" style= "border-radius : 20px" value="${paging.cri.keyword}">
	<input type="submit" id="searchb" value="검색">
</form>

<br>

	<table id = "container">
		<tr class = "table1" id = "tr1">
			<td style = "width : 120px">차트번호</td>
			<td style = "width : 100px">이름</td>
			<td style = "width : 180px">주민번호</td>
			<td style = "width : 220px">진단내용</td>
<!-- 			<td style = "width : 220px">상태 및 소견</td> -->
			<td style = "width : 170px">작성날짜</td>
			<td style = "width : 170px">입원날짜</td>
			<td style = "width : 170px">퇴원날짜</td>
			<td style = "width : 100px">환자코드</td>
			<td style = "width : 220px">차트수정 / 삭제</td> 
		<tr>
		<c:forEach items="${list}" var="chartlist">
		<tr class = "table1" id = "tr2">
			<td class = "td1">${chartlist.cno}</td>
			<td class = "td1">${chartlist.cname}</td>
			<td class = "td1">${chartlist.rrn}</td>
			<td class = "td1"><a class="detailc" href = "chartdetail?cno=${chartlist.cno}">${chartlist.disease}</a></td>
<%-- 			<td class = "td1">${chartlist.operation}</td> --%>
			<td class = "td1">${chartlist.operd}</td>
			<td class = "td1">
			<c:choose>
				<c:when test = "${chartlist.enterd eq ''}">
					해당없음 
				</c:when>
				<c:otherwise>
					${chartlist.enterd}
				</c:otherwise>
			</c:choose>
			</td>
			<td class = "td1">
			<c:choose>
				<c:when test = "${chartlist.exitd eq ''}">
					해당없음 
				</c:when>
				<c:otherwise>
					${chartlist.exitd}
				</c:otherwise>
			</c:choose></td>
			<td class = "td1">${chartlist.dcode}</td>
			<td>
				<a href = "chartmodifyForm?cno=${chartlist.cno}"><button id="modify">차트수정</button></a>
				<a href = "chartdelete?cno=${chartlist.cno}"><button id="delete">차트삭제</button></a>
			</td>
		<tr>
		</c:forEach>
	</table><br>
	<a id = "writeform" href = "chartwriteForm"><button id = "write">차트 작성</button></a><br>
	
	<c:if test="${paging.prev}">
		<a class = "paging" href="/chart/chartlist?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${paging.startpage-1}&amount=${paging.cri.amount}">◀</a>
	</c:if>
	
	<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
	<c:forEach begin="${paging.startpage}" end="${paging.endpage}" var="num">
	 	<a class = "paging" href="/chart/chartlist?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${num}&amount=${paging.cri.amount}">${num}</a>
	</c:forEach>
	
	<!-- next(다음)이 true이면 다음버튼 활성화 -->
	<c:if test="${paging.next}">
		<a class = "paging" href="/chart/chartlist?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${paging.endpage+1}&amount=${paging.cri.amount}">▶</a>
	</c:if>
 
</body>
</html>
