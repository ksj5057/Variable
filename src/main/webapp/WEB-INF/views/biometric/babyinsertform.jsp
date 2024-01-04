<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="">
<table>
	<tr>
		<td>아이 이름</td> 
		<td><input type = "text" name = "bname"></td>
	</tr>
	<tr>
		<td>아이 나이</td>
		<td><input type = "text" name = "bage"> 세 </td>
	</tr>
	<tr>
		<td>아이 성별</td>
		<td>
			남<input type = "radio" name = "bgender" value = "남">
	 		여<input type = "radio" name = "bgender" value = "여">
	 	</td> 
	 </tr>
	<tr>
		<td>보호자 이름</td>
		<td><input type = "text" name = "mname"></td> 
	</tr>
	<tr>
		<td>보호자 번호</td>
		<td><input type = "text" name = "mnumber"></td> 
	</tr>
	<tr>
		<td>보호자2 이름</td>
		<td><input type = "text" name = "fname"></td> 
	</tr>
	<tr>
		<td>보호자2 번호</td>
		<td><input type = "text" name = "fnumber"></td>
	</tr>
	<tr>
		<td>아이 사진</td>
	</tr>
</table>
<br>
<input type = "submit" value = "등록">
</form>
</body>
</html>