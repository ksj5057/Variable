<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/biometric/babyinsertform.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="babyinsert" method ="get">
<table class = "babyinfo">
	<tr>
		<th>아이 이름</th> 
		<td><input type = "text" name = "bname"></td>
	</tr>
	<tr>
		<th>아이 나이</th>
		<td><input type = "text" name = "bage"> 세 </td>
	</tr>
	<tr>
		<th>아이 성별</th>
		<td>
			남<input type = "radio" name = "bgender" value = "남">
	 		여<input type = "radio" name = "bgender" value = "여">
	 	</td> 
	 </tr>
	<tr>
		<th>보호자 이름</th>
		<td><input type = "text" name = "mname"></td> 
	</tr>
	<tr>
		<th>보호자 번호</th>
		<td><input type = "text" name = "mnumber"></td> 
	</tr>
	<tr>
		<th>보호자2 이름</th>
		<td><input type = "text" name = "fname"></td> 
	</tr>
	<tr>
		<th>보호자2 번호</th>
		<td><input type = "text" name = "fnumber"></td>
	</tr>
	<tr>
		<th>아이 사진</th>
		<td>
			<div id="upload">
				<div>파일업로드</div>
				<div>
				<!-- 메이븐으로 input type에 'file'을 추가 -->
					<input type="file" name="bimage">
				</div>
			
			</div>
		</td>
	</tr>
</table>
<br>
<input type = "submit" value = "등록">
</form>
</body>
</html>