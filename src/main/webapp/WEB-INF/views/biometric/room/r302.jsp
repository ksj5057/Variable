<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소아과병동 | 302호</title>
<link rel="stylesheet" href="../resources/css/biometric/broom302.css" />
</head>
<body>

<jsp:include page="../../include/header.jsp"></jsp:include>
<div id="room_body">
<div class = "babyr"><h1 class = "roomn">302호</h1></div>
		
<div class = "incubator">
	<ul class = "babylist">
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/biobaby/sosuke.jpg" width = "225px" height = "300px"></a>
			<dl>
				<dt class = "bname"><a href = "babydetail">소숙해</a></dt>
				<dd>현재 체온 : ℃</dd>
				<dd>체온이 높습니다</dd>
			</dl>
		</li>
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/biobaby/anya.jpg" width = "225px" height = "300px"></a>
			<dl>
				<dt class = "bname"><a href = "babydetail">안이야</a></dt>
				<dd>현재 체온 : ℃</dd>
				<dd>체온이 낮습니다</dd>
			</dl>
		</li>
		<li class = "baby1" id = "lababy">
		<a href = "babydetail"><img src = "../resources/image/biobaby/rlcjf.jpg" width = "225px" height = "300px"></a>
			<dl>
				<dt class = "bname"><a href = "babydetail">이기철</a></dt>
				<dd>현재 체온 : ℃</dd>
				<dd>정상체온입니다</dd>
			</dl>
		</li>
	</ul>
</div>
</div>





		<!--푸터  -->
<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>