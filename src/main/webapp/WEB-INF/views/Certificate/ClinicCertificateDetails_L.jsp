<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>증명서 상세 내역</title>
<!-- 진룍확인서 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/../../resources/js/Certificate/ClinicCertificateDetails.js"></script>
<link rel="stylesheet" href="/resources/css/Certificate/ClinicCertificateDetails.css">
<script src="/../../resources/js/print/Print.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
</head>
<body>
	<!-- 진료내역 리스트 -->
	<div class="menu-wrap">
	<ul class = "menu">
			<li class="posi">진료일</li>	
			<li class="posi">진단명</li>
			<li class="posi" id="px3">진료과(의사명)</li>
	</ul>
		<c:forEach items="${list}" var="chartlist">
	<ul>
			<li><a class="posi" href ="ClinicCertificateDetails_Lr?db=${chartlist.db}" >${chartlist.disease}</a></li>
			<li id="lines" class="posi">${chartlist.dn}</li>
			<li class="posi" id="px3">${chartlist.md}(${chartlist.docname})</li>
	</ul>
		</c:forEach>
	
	<!-- 페이징 -->
	<!--  이전 버튼 -->
	<c:if test="${paging.prev}">
		<a class = "paging" href="/ClinicCertificateDetails_L?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${paging.startpage-1}&amount=${paging.cri.amount}">◀</a>
	</c:if>
	
	<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
	<c:forEach begin="${paging.startpage}" end="${paging.endpage}" var="num">
	 	<a class = "paging" href="/ClinicCertificateDetails_L?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${num}&amount=${paging.cri.amount}">${num}</a>
	</c:forEach>
	
	<!-- next(다음)이 true이면 다음버튼 활성화 -->
	<c:if test="${paging.next}">
		<a class = "paging" href="/ClinicCertificateDetails_L?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pagenum=${paging.endpage+1}&amount=${paging.cri.amount}">▶</a>
	</c:if>
	</div>
	<div id="printimage2" class="a4">
	<button onclick="CdownloadPdf()" class="cfd_btn">다운로드</button>
	<button onclick="return printPage()" class="cfd_btn1">출력하기</button>	
	</div>
	<div id="printpage">
		<div id="page">
			<!-- 제목 -->
			<div id="filed">
				<table class="line">
					<tr>
						<td rowspan="3" id="title">진 료 확 인 서</td>
						<td class="nav">진 료 과</td>
						<td class="nav2">${sert.md}</td>
					</tr>
					<tr>
						<td class="nav">작 성 자</td>
						<td class="nav2">${sert.docname}</td>
					</tr>
					<tr>
						<td class="nav">일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;자</td>
						<td class="nav2">${sert.disease}</td>
					</tr>

				</table>
				<table class="line">
					<tr>
						<!-- 본문 -->
						<td colspan="2" class="titlenumber">차 트 번 호</td>
						<td class="nav3">${sert.rrn}</td>
					</tr>
					<tr>
						<td colspan="2" class="titlenumber">문 서 번 호</td>
						<td class="nav3">${sert.db}</td>
					</tr>
				</table>

				<table class="line">
					<tr>
						<td id="name">성 명</td>
						<td id="o1">${sert.mname}</td>
						<td id="birth">생 년 월 일</td>
						<td id="o3">${sert.birth}</td>
						<td id="age">나 이/성 별</td>
						<td id="o4">${sert.age}/${sert.gender}</td>
					</tr>
				</table>
				<table class="line">
					<tr>
					</tr>
					<tr>
						<td class="content">진 단 명
						<td>${sert.dn}</td>
					</tr>
				</table>
				<table class="line">
					<tr>
						<td class="content" id="insert">진 단 내 용</td>
						<td>${sert.content}</td>
					</tr>
				</table>
			</div>

			<div id="doc">
				<label>주 치 의:&nbsp;&nbsp;${sert.docname}&nbsp;&nbsp;(인)</label>
			</div>
			
			<div id="boss">
				<h1>
					<label>그린대학교병원</label>
				</h1>
			</div>
		</div>
	</div>
</body>
</html>