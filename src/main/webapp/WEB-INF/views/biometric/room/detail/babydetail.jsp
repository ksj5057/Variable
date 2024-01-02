<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린대학병원 | 상세보기</title>
<link rel="stylesheet" href="../resources/css/biometric/babydetail.css" />
</head>
<body>

<jsp:include page="../../../include/header.jsp"></jsp:include>

<!-- 이미지 넣기 -->
<div id="detail_body">
<table id="baby_table">
<tr>
<td>
<img src="../../resources/image/bossbaby.jpg" id="detail_img"/>
</td>
</tr>

</table>
<table border="1" id="detail_table">	
	<tr>
		<td>
		${'name'} 아기
		</td>
		</tr>
		<tr>
		<td>
		부모님 연락처 <span>${'010-8888-8888'}</span>
		</td>
		</tr>
		<tr>
		<td>
		입원일 :
		</td>
		</tr>
		</table>
		
		<!-- 진료 내역 -->
		<table border="1" id="baby_Clinic">
		<tr>
		<td>
		진료 내역:
		</td>
		</tr>
		</table>
		<div id="Measurement" >
	<span>측정 기록</span>
	<!-- 현재 날짜 -->
	<div>${now}</div>
	<table border="1" id="Clinic_time">
	<tr>
	<td>
	</td>
	</tr>
	</table>
	</div>
	</div>
</body>
</html>