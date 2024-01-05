<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소아과병동 | 303호</title>
<link rel="stylesheet" href="../resources/css/biometric/broom303.css" />
</head>
<body>

<jsp:include page="../../include/header.jsp"></jsp:include>
<div id="room_body">
<div class = "babyr"><h1 class = "roomn">303호</h1></div>
<div class="room_3031"><input type="button" value="입원" class="discharge"></div>
<div class="room_3031"><input type="button" value="퇴원" class="discharge"></div>
<div class="room_3032"><input type="button" value="입원" class="discharge"></div>
<div class="room_3032"><input type="button" value="퇴원" class="discharge"></div>
<div class="room_3033"><input type="button" value="입원" class="discharge"></div>
<div class="room_3033"><input type="button" value="퇴원" class="discharge"></div>

<div class = "incubator">
	<ul class = "babylist">
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/biobaby/sweetrain.jpg" width = "225px" height = "300px"></a>
			<dl>
				<dt class = "bname"><a href = "babydetail">나단비</a></dt>
				<dd>현재 체온 : ℃</dd>
				<dd>체온이 높습니다</dd>
			</dl>
		</li>
		<li class = "baby1">
		<a href = "babydetail"><img src = "../resources/image/biobaby/gmlehd.jpg" width = "225px" height = "300px"></a>
			<dl>
				<dt class = "bname"><a href = "babydetail">고희동</a></dt>
				<dd>현재 체온 : ℃</dd>
				<dd>체온이 낮습니다</dd>
			</dl>
		</li>
		<li class = "baby1" id = "lababy">
		<a href = "babydetail"><img src = "../resources/image/biobaby/ruda.jpg" width = "225px" height = "300px"></a>
			<dl>
				<dt class = "bname"><a href = "babydetail">이루다</a></dt>
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