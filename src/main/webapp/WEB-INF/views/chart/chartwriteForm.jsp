<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차트 작성</title>
</head>
<body>
<form action="chartwrite" method = "post">
	<table>
		<tr>
			<td>이름</td>
			<td><input type = "text" name = "cname"></td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td><input type = "text" name = "rrn"></td>
		</tr>  
		<tr>
			<td>병명</td>
			<td><input type = "text" name = "disease"></td>
		</tr>
		<tr>
			<td>수술명</td>
			<td><input type = "text" name = "operation"></td>
		</tr>
		<tr>
			<td>수술날짜</td>
			<td><input type = "date" name = "operd"></td>
		</tr>
		<tr>
			<td>입원날짜</td>
			<td><input type = "date" name = "enterd"></td>
		</tr>
		<tr>
			<td>퇴원날짜</td>
			<td><input type = "date" name = "exitd"></td>
		</tr>
		<tr>
			<td>환자코드</td>
			<td><input type = "text" name = "dcode"></td>
		</tr>
		<tr>
			<td colspan = "2"><input type = "submit" value = "작성"></td>
		</tr>
		
	</table>
</form>
</body>
</htm l> 