<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/chartwriteform.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src = "/resources/js/chart/chartwriteForm.js"></script>
<meta charset="UTF-8">
<title>차트 작성</title>
</head>
<body>
	
	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="chart_box">
		<!-- 차트번호 -->	
	<div class="chartwrite_box">
	<form action="chartwrite" method="post">
	
	<h1>차트 작성</h1>
	<input type='hidden' name='hc' value="01" id="hc">
			<div id="chartselet">
			<select id="Certificates" onchange="Certificate(this)">
			<option id="Clinic" value="Clinic" 		 >진료 확인서</option>
			<option id="Discharge" value="Discharge" >입퇴원 확인서</option>
			<option id="Operation" value="Operation" >수술 확인서</option>
			</select>
			</div>
	<input type="hidden" name="rrn">
		<table class="container">
			<tr>
				<th>이름 </th>
				<td><input type="text" name="mname" id="inid" placeholder="환자 이름을 입력해주세요."></td>
				<th>진료과</th>
				<td>${chart.md}<input type="hidden" name="md" value="${chart.md}"></td>
				
			</tr>
			<tr>
				<th>주민번호</th>
				<td><input type="text" name="birth" id="inrrn" placeholder="환자 주민번호를 입력해주세요." maxlength="10"></td>
				<th>병명</th>
				<td><input type="text" name="dn" id="indis" placeholder="환자 병명을 입력해주세요."></td>
			</tr>
			<tr id="va">
				<th>입원일</th>
				<td><input type="date" name="hospital" id="inenterd"></td>
				<th>퇴원일</th>
				<td><input type="date" name="exitd" id="inexitd"></td>
			</tr>
			<tr>
				<th id ="va1">진료일</th>
				<td id ="va4" colspan="4"><input type="date" name="disease" id="inoperd"></td>
				<th id="va2">수술일</th>
				<td id="va3" colspan="4"><input type="date" name="oper" id="inexitd"></td>
			</tr>
			<tr>
				<th>상태 및 소견</th>
				<td colspan="4" class="chart_memo"><textarea cols="" name="content" id="inoper" style="width: 798px; height: 392px;"></textarea></td>
			</tr>		
		</table>
		<div class="chart_write_btn">
		<input type="submit" value="작성완료">
		</div>
	</form>
	</div>
	</div>
	
	<!-- 푸터 -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	
	<script>
	 document.getElementById('inoperd').value = new Date().toISOString().substring(0, 10);;
	 const cl = document.getElementById('va');
	 const cl2 = document.getElementById('va2');
	 const cl3 = document.getElementById('va3');
	 cl.style.display = 'none';
	 cl2.style.display = 'none';
	 cl3.style.display = 'none';
</script>
</body>
</html>
