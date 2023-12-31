<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>증명서 상세 내역</title>

<!-- 수술확인서 -->
<link rel="stylesheet" href="/resources/css/Certificate/CertificateNonmember/OperationCertificateDetailsNon.css">
<script src="/../../resources/js/print/Print.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>

</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../../include/header.jsp"></jsp:include>


	<div class="ocd_box">

		<div id="printimage2" class="a4">
			<button onclick="CdownloadPdf()" class="ocd_btn">다운로드</button>
			<button onclick="return printPage()" class="ocd_btn1">출력하기</button>
		</div>

		<div id="printpage">
			<div id="page">
				<!-- 제목 -->
				<div id="filed">
					<table class="line">
						<tr>
							<td rowspan="3" id="title">수 술 확 인 서</td>
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
							<td id="Hospitalization">입 원 일</td>
							<td id="in">${sert.hospital}</td>
							<td id="day1">퇴 원 일</td>
							<td id="day2">${sert.exitd}</td>
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
							<td class="content">진 단 명
							<td>${sert.dn}</td>
						</tr>
					</table>
					<table class="line">
						<tr>
							<td class="content" id="insert">진단 내용</td>
							<td>${sert.content}</td>
						</tr>
					</table>
				</div>
				위 환자는 ${sert.oper} 본원에서 아래와 같이 수술을 시행 및 예정임을 확인함.
				<ul>
					<li class="ment">수 술 명:&nbsp;&nbsp;${sert.dn}</li>
				</ul>
				<ul>
					<li class="ment">수 술 일 자:&nbsp;&nbsp;${sert.oper}</li>
				</ul>
				<ul>
					<li class="ment">발 행 일:&nbsp;&nbsp;${sert.modi}</li>
				</ul>
				<ul>
					<li class="ment">의 사 성 명:&nbsp;&nbsp;${sert.docname}</li>

				</ul>
				<ul>
					<li class="ment">면 허 번 호:&nbsp;&nbsp;${sert.dl}</li>
				</ul>
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
	</div>

	<!-- 푸터 -->
<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>