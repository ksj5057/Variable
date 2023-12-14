<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증명서 상세 내역</title>
<!-- 입퇴원확인서 -->
<link rel="stylesheet" href="/resources/css/Certificate/HospitalizationCertificateDetails.css">
<script src="/../../resources/js/print/Print.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
</head>
<body>
<button onclick="HdownloadPdf()">다운로드 </button>
<div  id="printimage2" class="a4"><button onclick="return printPage()" id="printimage"></button><label onclick="return printPage()">출력</label></div>
<div id="printpage">
	<div id="page">
		<!-- 제목 -->
		<div id="filed">
			<table class="line">
				<tr>
					<td rowspan="3" id="title">입·퇴원 확 인 서</td>
					<td class="nav">진 료 과</td>
					<td class="nav2">(01)내과</td>
				</tr>
				<tr>
					<td class="nav">작 성 자</td>
					<td class="nav2">정 헌 태</td>
				</tr>
				<tr>
					<td class="nav">일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;자</td>
					<td class="nav2">23년3월18일</td>
				</tr>

			</table>
			<table class="line">
				<tr>
					<!-- 본문 -->
					<td colspan="2" class="titlenumber">차트 번호</td>
					<td class="nav3">01</td>
				</tr>
				<tr>
					<td colspan="2" class="titlenumber">면 번호</td>
					<td class="nav3">0101-01</td>
				</tr>
			</table>

			<table class="line">
				<tr>
					<td id="Hospitalization">입 원</td>
					<td id="in">308</td>
					<td id="room">호 실</td>
					<td id="day1">입 원 년월일 </td>
					<td id="day2">23년3월2일</td>
				</tr>
			</table>
			<table class="line">
				<tr>
					<td id="name">성 명</td>
					<td id="o1">김륵싼</td>
					<td id="gender">성 별</td>
					<td id="o2">남</td>
					<td id="birth">생년월일</td>
					<td id="o3">921108-1</td>
					<td id="age">연 령</td>
					<td id="o4">31세</td>
				</tr>
			</table>
			<table class="line">
				<tr>
					<td class="content">주 소</td>
					<td>울산광역시 남구 야음동 748-16번지</td>
				</tr>
				<tr>
					<td class="content">진 단 명
					<td>교통 사고로인한 허리통증 및 염좌로인한 입원</td>
				</tr>
			</table>
			<table class="line">
				<tr>
					<td class="content" id="insert">입·퇴 원 내 용</td>
					<td>상기 환자는 23년3월2일 교통사로고인하여 허리통증이 있었으므로 2주간의 입원을 요하며
						23년3월16일까지 입원하였음.</td>
				</tr>
			</table>
		</div>

		<div id="doc">
			<label>주 치 의:&nbsp;&nbsp;정 헌 태&nbsp;&nbsp;(인)</label>
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