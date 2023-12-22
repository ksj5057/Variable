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
	<jsp:include page="../include/header.jsp"></jsp:include>
	<br>
<div class = "chartform1">
<div class="headline"><h2>차트 리스트 (관리자 전용)</h2></div>
<div class = "chartform2">
<form id="searchform" action="/chart/chartlist" method="get">

	<select name="type" style= "border-radius : 20px">
		<option value="T">이름</option>
		<option value="C">문서번호</option>
	</select>
	<input type="text" name="keyword" style= "border-radius : 20px" value="${paging.cri.keyword}">
	<input type="submit" id="searchb" value="검색">
</form>

<br>

	<table id = "container">
		<tr class = "table1" id = "tr1">
			<td style = "width : 120px">문서번호</td>
			<td style = "width : 100px">이름(차트번호)</td>
			<td style = "width : 180px">생년월일</td>
			<td style = "width : 80px">나이/성별</td>
			<td style = "width : 220px">진단명</td>
<!-- 			<td style = "width : 220px">상태 및 소견</td> -->
			<td style = "width : 170px">작성일(수정일)</td>
			<td style = "width : 170px">입원일</td>
			<td style = "width : 170px">퇴원일</td>
			<td style = "width : 100px">진료과(의사명)</td>
			<td style = "width : 220px">차트수정 / 삭제</td> 
		<tr>
		<c:forEach items="${list}" var="chartlist">
		<tr class = "table1" id = "tr2">
			<td class = "td1">${chartlist.db}</td> <!-- 문서번호 -->
			<td class = "td1">${chartlist.mname}(${chartlist.rrn})</td> <!-- 이름 -->
			<td class = "td1">${chartlist.birth}</td><!-- 생년월일 -->
			<td class = "td1">${chartlist.age}/${chartlist.gender}</td><!-- 나이/성별 -->
			<td class = "td1"><!-- 진단명 -->
			<a class="detailc" href = "chartdetail?db=${chartlist.db}">${chartlist.dn}</a></td>
<%-- 			<td class = "td1">${chartlist.operation}</td> --%>
			<td class = "td1">${chartlist.disease}<!-- 작성일 -->
<%-- 			<c:choose> --%>
<%-- 			<c:when test="${chartlist.modi == null}"> --%>
<!-- 			(수정사항 없음) -->
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>
<%-- 					(${chartlist.modi}) --%>
<%-- 				</c:otherwise> --%>
<%-- 			</c:choose> --%>
			</td> <!-- 작성일 -->
			<td class = "td1">
			<c:choose>
				<c:when test = "${chartlist.hospital eq null}"><!-- 입원일 -->
					-
				</c:when>
				<c:otherwise>
					${chartlist.hospital}
				</c:otherwise>
			</c:choose>
			</td>
			<td class = "td1">
			<c:choose>
				<c:when test = "${chartlist.exitd eq null}"><!-- 퇴원일 -->
					-
				</c:when>
				<c:otherwise>
					${chartlist.exitd}
				</c:otherwise>
			</c:choose></td>
			
			<td class = "td1">${chartlist.speciality} <br>(${chartlist.docname})</td>
			<td>
			<c:choose>
			<c:when test="${chartlist.docname eq doc.mname}">
				<a href = "chartmodifyForm?db=${chartlist.db}"><button id="modify">차트수정</button></a>
				<input type = "button" id = "delete" onclick = "deletec('${chartlist.db}')" value = "차트삭제">
				</c:when>
			<c:otherwise>
					<p id="modix">수정 불가</p>
				</c:otherwise>
			</c:choose>
			</td>
			
			
		<tr>
		</c:forEach>
	</table>
	<br>
	<a id = "writeform" href ="chartwriteForm"><button id ="write">차트 작성</button></a><br>
	</div>
	
	
	<div class="pagi_box">
	<ul class = "pagiging">
	
	<c:if test="${paging.prev}">
		<li><a class = "paging" href="/chart/chartlist?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${paging.startpage-1}&amount=${paging.cri.amount}">◀</a></li>
	</c:if>
	
	<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
	<c:forEach begin="${paging.startpage}" end="${paging.endpage}" var="num">
	 	<li><a class = "paging" href="/chart/chartlist?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${num}&amount=${paging.cri.amount}">${num}</a></li>
	</c:forEach>
	
	<!-- next(다음)이 true이면 다음버튼 활성화 -->
	<c:if test="${paging.next}">
		<li><a class = "paging" href="/chart/chartlist?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${paging.endpage+1}&amount=${paging.cri.amount}">▶</a></li>
	</c:if>
	</ul>
	</div>
	</div>
 	<!-- 푸터 -->
 	<div id = "footer">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
</body>
</html>
