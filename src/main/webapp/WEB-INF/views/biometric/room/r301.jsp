<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소아과병동 | 301호</title>
<link rel="stylesheet" href="../resources/css/biometric/broom.css" />
</head>
<body>

<jsp:include page="../../include/header.jsp"></jsp:include>

<div class = "babyr"><h1 class = "roomn">301호</h1></div>
		
<div class = "incubator">
	<ul class = "babylist">
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/bossbaby.jpg" width = "300px" height = "400px"></a>
			<dl>
				<dt class = "bname">이보배</dt>
				<dd>현재 체온 : ℃</dd>
				<dd>체온이 높습니다</dd>
			</dl>
		</li>
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/incredible.jpg" width = "300px" height = "400px"></a>
			<dl>
				<dt class = "bname">김잭잭</dt>
				<dd>현재 체온 : ℃</dd>
				<dd>체온이 낮습니다</dd>
			</dl>
		</li>
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/himawari.jpg" width = "300px" height = "400px"></a>
			<dl>
				<dt class = "bname">신짱아</dt>
				<dd>현재 체온 : ℃</dd>
				<dd>정상체온입니다</dd>
			</dl>
		</li>
	</ul>
</div>






		

</body>
</html>