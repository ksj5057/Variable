<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "/resources/css/chartwriteform.css">
<meta charset="UTF-8">
<title>차트 작성</title>
</head>
<body>
<div id="main"><h2>차트 작성</h2></div>

<form action="chartwrite" method = "post">
	<table id = "container">
		<tr>
			<td class = "name">이름</td>
			<td class = "name" ><input type = "text" name = "cname" id = "inid"></td>
			<td class = "dcode">환자코드</td>
			<td class = "dcode">
				<select id = "select" name="dcode">
					<option selected disabled>환자 코드를 선택하세요.</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
				</select>
			</td>
		</tr>  
		<tr>
			<td class = "rrn">주민번호</td>
			<td class = "rrn"><input type = "text" name = "rrn" id = "inrrn"></td>
			<td class = "disease">병명</td>
			<td class = "disease"><input type = "text" name = "disease" id = "indis"></td>
			
		</tr>
		<tr>
			<td class = "operation">수술명</td>
			<td class = "operation"><input type = "text" name = "operation" id = "inoper"></td>
			<td class = "operd">수술날짜</td>
			<td class = "operd"><input type = "date" name = "operd" id = "inoperd"></td>
		</tr>
		<tr>
			<td class = "enterd">입원날짜</td>
			<td class = "enterd"><input type = "date" name = "enterd" id = "inenterd" ></td>
			<td class = "exitd">퇴원날짜</td>
			<td class = "exitd"><input type = "date" name = "exitd" id = "inexitd"></td>
		</tr>
	</table><br>
	<input id="writebutton" type = "submit" value = "작성하기">
</form>
</body>
</html> 