<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>증명서 상세 내역</title>
<link rel="stylesheet"
	href="/resources/css/ClinicCertificateDetails.css">
</head>
<body>

	<div id="page">
		<!-- 제목 -->
		<div id="filed">
			<table class="line">
				<tr>
					<td rowspan="3" id="title">진 료 확 인 서</td>
					<td class="nav">진 료 과</td>
					<td class="nav2"></td>
				</tr>
				<tr>
					<td class="nav">작 성 자</td>
					<td class="nav2"></td>
				</tr>
				<tr>
					<td class="nav">일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;자</td>
					<td class="nav2"></td>
				</tr>

			</table>
			<table class="line">
				<tr>
					<!-- 본문 -->
					<td colspan="2" class="titlenumber">병록 번호</td>
					<td class="nav3"></td>
				</tr>
				<tr>
					<td colspan="2" class="titlenumber">면 번호</td>
					<td class="nav3"></td>
				</tr>
			</table>

			<table class="line">
				<tr>
					<td id="name">성 명</td>
					<td id="o1"></td>
					<td id="gender">성 별</td>
					<td id="o2"></td>
					<td id="birth">생년월일</td>
					<td id="o3"></td>
					<td id="age">연 령</td>
					<td id="o4"></td>
				</tr>
			</table>
			<table class="line">
				<tr>
					<td class="content">주 소</td>
					<td></td>
				</tr>
				<tr>
					<td class="content">진 단 명
					<td></td>
				</tr>
			</table>
			<table class="line">
				<tr>
					<td class="content" id="insert">진 단 내 용</td>
					<td></td>
				</tr>
			</table>
		</div>

		<div id="doc">
			<label>담당의사:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(인)</label>
		</div>
		<div id="boss">
			<h1>
				<label>그린대학교병원</label>
			</h1>
		</div>
	</div>
</body>
</html>