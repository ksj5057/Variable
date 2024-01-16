<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경고창</title>
<style type="text/css">
body {
    list-style: none;
    font-family: 'OTWelcomeRA';
}

*{
    font-size: 20px;
    margin-bottom: 10px;
}
.style1{
margin-left: 40px;
margin-top:20px;
}

#button{
    position: absolute;
    left: 540px;
    top: 1px;
}

</style>
</head>

<body style="background:#53D7A5;">
<h1 style="text-align: center;">301호</h1>
<c:if test="${not empty bt301_1}">
 <img src="../../resources/image/biometric/경고.png" style="position: absolute;" style="left: 1px;">
<div class="style1" style="color:red">${bt301_1} 체온에 이상이 있습니다 확인해주세요.</div>
</c:if>
<img src="../../resources/image/biometric/경고.png" style="position: absolute;" style="left: 1px;">
<c:if test="${not empty bt301_2}">
<div class="style1" style="color:red">${bt301_2} 체온에 이상이 있습니다 확인해주세요.</div>
</c:if>
<c:if test="${not empty bt301_3}">
<img src="../../resources/image/biometric/경고.png" style="position: absolute;" style="left: 1px;">
<div class="style1" style="color:red">${bt301_3} 체온에 이상이 있습니다 확인해주세요.</div>
</c:if>


<div id="button">
		<img src="../../resources/image/biometric/닫기.png" onclick="popcl()">
		</div>
			<script>
			function popcl(){
				window.close();
			}
			</script>
			
</body>
</html>