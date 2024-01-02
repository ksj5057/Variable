<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린대학병원 | 상세보기</title>
<link rel="stylesheet" href="../resources/css/biometric/babydetail.css" />
</head>
<body>
	<!-- 헤더 -->
	<div>
		<jsp:include page="../../../include/header.jsp"></jsp:include>
	</div>
	<!-- 이미지 넣기 -->
	<div id="detail_body">
		<table id="baby_table">
			<tr>
				<td><img src="../../resources/image/bossbaby.jpg"
					id="detail_img" /></td>
			</tr>

		</table>
		<div id="table_rig">
			<table border="1" id="detail_table">
				<tr>
					<td>${'name'} 아기</td>
				</tr>
				<tr>
					<td>부모님 연락처 <span>${'010-8888-8888'}</span>
					</td>
				</tr>
				<tr>
					<td>입원일 :</td>
				</tr>
			</table>

			<!-- 진료 내역 -->
			<table border="1" id="baby_Clinic">
				<tr>
					<td>진료 내역:</td>
				</tr>
			</table>

		</div>
		<div id="Measurement">
			<span>측정 기록</span>
			<!-- 현재 날짜 -->
			<div>${now}<br>
				<c:forEach var="ss" begin="1" end="23">
					<table class="Clinic_time">
						<tr>
							<td>${ss}시</td>
						</tr>
					</table>
				</c:forEach>
				<table class="temperatura">
					<tr>
					<td>
					40℃
					</td>
					</tr>
					<tr>
					<td>
					39℃
					</td>
					</tr><tr>
					<td>
					38℃
					</td>
					</tr><tr>
					<td>
					37℃
					</td>
					</tr><tr>
					<td>
					36℃
					</td>
					</tr><tr>
					<td>
					35℃
					</td>
					</tr><tr>
					<td>
					34℃
					</td>
					</tr>
					</table>
			</div>
		</div>
	</div>
	
	<!--푸터  -->
<jsp:include page="../../../include/footer.jsp"></jsp:include>
</body>
</html>