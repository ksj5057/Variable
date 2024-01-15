<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<!-- css 연결 -->
<link rel="stylesheet" href="../resources/css/biometric/bmain.css" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../resources/js/biometric/bmain.js"></script>
<script type="text/javascript"
	src="../resources/js/biometric/bmain_tem.js"></script>
<title>그린대학교병원 | 소아과병동</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div id="child">
		<div id="child_body">
			<h1 id="child_main">그린대학교병원 소아과병동(3F)</h1>

			<!--  301호 or 실내온도 div -->
			<div class="room">
				<a href="r301" class="room_text"> <!-- 이미지 솔잎반(301호실) --> <img
					src="../../resources/image/biometric/솔잎반.png" class="room_image"
					id="room_pop1">
				</a>

				<div id="poptext1">클릭 하면 솔잎반으로 들어갈수있어요!</div>

				<!--  경고 문구  -->
				<div id="tem_input_ment">
				<div class="woring_box">
				<a href="r301" class="room_text">301호</a>
				</div>
				<c:choose>
				<c:when test="${indoor.now_bt301 lt 21}">
				<!-- 경고 이미지 -->
					<img src="../../resources/image/biometric/경고.png" id="woring_image" />
				<label id="woring_text1" style="color: blue;">실내온도가 낮아지고 있습니다.</label>
				<label id="woring_text2" style="color: blue;">온도를 조절하세요.</label>
				</c:when>
				<c:when test="${indoor.now_bt301 gt 25}">
				<!-- 경고 이미지 -->
					<img src="../../resources/image/biometric/경고.png" id="woring_image" />
				<label id="woring_text1" style="color: red;">실내온도가 높아지고 있습니다.</label>
				<label id="woring_text2" style="color: red;">온도를 조절하세요.</label>
				</c:when>
				</c:choose>
				<div id="bt301_ti" class="ti_input">
					<label>실내온도: <input type="text" value="${indoor.now_bt301}℃" readonly style="width: 40px;"></label>
					 <label>설정온도: <input type="text" value="${indoor.set_bt301}℃" readonly style="width: 40px;"></label>
				</div>
				</div>
			</div>

			<!--  302호 or 실내온도 div -->
			<div class="room">
				<!--  이미지에 302호실 링크 걸기 -->
				<a href="r302" class="room_text"> <!-- 이미지 풀잎반(302호실) --> <img
					src="../../resources/image/biometric/풀잎반.png" class="room_image"
					id="room_pop2">
				</a>

				<div id="poptext2">클릭 하면 풀잎반으로 들어갈수있어요!</div>
				<!--  경고 문구  -->
				<div id="tem_input_ment">
				<div class="woring_box">
				<a href="r302" class="room_text">302호</a>
				</div>
				<c:choose>
				<c:when test="${indoor.now_bt302 lt 21}"> <!-- 저열< -->
					<!-- 경고 이미지 -->
					<img src="../../resources/image/biometric/경고.png" id="woring_image" />
				<label id="woring_text1" style="color: blue;">실내온도가 낮아지고 있습니다.</label>
				<label id="woring_text2" style="color: blue;">온도를 조절하세요.</label>
				</c:when>
				<c:when test="${indoor.now_bt302 gt 25}">
					<!-- 경고 이미지 -->
					<img src="../../resources/image/biometric/경고.png" id="woring_image" />
				<label id="woring_text2" style="color: red;">실내온도가 높아지고 있습니다.</label>
				<label id="woring_text2" style="color: red;">온도를 조절하세요.</label>	
				</c:when>
				</c:choose>
				<div id="bt301_ti" class="ti_input">
					<label>실내온도: <input type="text" value="${indoor.now_bt302}℃" readonly style="width: 40px;"></label>
					 <label>설정온도: <input type="text" value="${indoor.set_bt302}℃" readonly style="width: 40px;"></label>
				</div>
				</div>
			</div>

			<!--  303호 or 실내온도 div -->
			<div class="room">
				<!--  이미지에 303호실 링크 걸기 -->
				<a href="r303" class="room_text"> <!--  이미지에 새싹반(303호실)--> <img
					src="../../resources/image/biometric/꽃잎반.png" class="room_image"
					id="room_pop3">
				</a>

				<div id="poptext3">클릭 하면 꽃잎반으로 들어갈수있어요!</div>
				<!--  경고 문구  -->
			<div id="tem_input_ment">
				<div class="wroing_box">
				<a href="r303" class="room_text">303호</a>
				</div>
				<c:choose>
				<c:when test="${indoor.now_bt303 lt 21}">
				
					<!-- 경고 이미지 -->
					<img src="../../resources/image/biometric/경고.png" id="woring_image" />
				<label id="woring_text1" style="color: blue;">실내온도가 낮아지고 있습니다.</label>
				<label id="woring_text2" style="color: blue;">온도를 조절하세요.</label>
				</c:when>
				<c:when test="${indoor.now_bt303 gt 25}">
					<!-- 경고 이미지 -->
					<img src="../../resources/image/biometric/경고.png" id="woring_image" />
				<label id="woring_text1" style="color: red;">실내온도가 높아지고 있습니다.</label>
				<label id="woring_text2" style="color: red;">온도를 조절하세요.</label>
				</c:when>
				</c:choose>
				<div id="bt301_ti" class="ti_input">
					<label>실내온도: <input type="text" value="${indoor.now_bt303}℃" readonly style="width: 40px;"></label>
					 <label>설정온도: <input type="text" value="${indoor.set_bt303}℃" readonly style="width: 40px;"></label>
				</div>
				</div>
			</div>

		</div>
		<div id="temperature_control">
			<div id=new_child>
				<button onclick="openPopup()">신규 환자 등록</button>
			</div>
			<div style="padding-top: 40px;">
				<label id="tem_name">일괄 온도</label> <input type="number" min="18"
					max="30" id="batches_tem" value="24" readonly
					style="text-align: center;"> <label class="val"><img
					class="imageup" onclick="plus(4)" id="up4"><img
					class="imagedown" onclick="minus(4)" id="down4"></label> <input
					type="button" value="설정" onclick="tem(4)" style="width: 105px;">
			</div>

			<div style="padding-top: 20px;">
				301호 온도 조절 <input type="number" min="18" max="30" id="bt301_tem"
					value="${indoor.set_bt301}" readonly style="text-align: center;">
				<label class="val"><img class="imageup" onclick="plus(1)"
					id="up1"><img class="imagedown" onclick="minus(1)" id="down1"></label>
				<input type="button" value="설정" id="in301" onclick="tem(1)"
					style="width: 105px;">
			</div>

			<div style="padding-top: 20px;">
				302호 온도 조절 <input type="number" min="18" max="30" id="bt302_tem"
					value="${indoor.set_bt302}" readonly style="text-align: center;">
				<label class="val"><img class="imageup" onclick="plus(2)"
					id="up2"><img class="imagedown" onclick="minus(2)" id="down2"></label>
				<input type="button" value="설정" id="in302" onclick="tem(2)"
					style="width: 105px;">
			</div>

			<div style="padding-top: 20px;">
				303호 온도 조절 <input type="number" min="18" max="30" id="bt303_tem"
					value="${indoor.set_bt303}" readonly style="text-align: center;">
				<label class="val"><img class="imageup" onclick="plus(3)"
					id="up3"><img class="imagedown" onclick="minus(3)" id="down3"></label>
				<input type="button" value="설정" id="in303" onclick="tem(3)"
					style="width: 105px;">
			</div>

		</div>
	</div>
<div>
	<c:choose>
	<c:when test="${Warningh == 1}"> 
		<img src="../../resources/image/biometric/hf_woring1.png" class="h_f" id="h_f1"/> 
	</c:when>
	<c:when test=" ${Warningh == 2}"> 
		<img src="../../resources/image/biometric/hf_woring2.png"  class="h_f" id="h_f1"/> 
		</c:when>
	<c:when test="${Warningh == 3}"> 
		<img src="../../resources/image/biometric/hf_woring3.png"  class="h_f" id="h_f1"/>
	</c:when>
	</c:choose>
		</div>
		<div id="301_room_lf_woring">
		<c:choose>
	<c:when test="${Warningl == 1}"> 
		<img src="../../resources/image/biometric/lf_woring1.png" class="l_f" id="l_f1"/> 
		</c:when>
		
	<c:when test="${Warningl == 2}"> 
		<img src="../../resources/image/biometric/lf_woring2.png"  class="l_f" id="l_f1"/>
		
		</c:when>
	<c:when test="${Warningl == 3}"> 
		 <img src="../../resources/image/biometric/lf_woring3.png"  class="l_f" id="l_f1"/>
		 </c:when>
	</c:choose>
	</div>
	<div>
		<img src="../../resources/image/biometric/hf_woring1.png"  class="h_f" id="h_f2"/> 
		<img src="../../resources/image/biometric/hf_woring2.png"  class="h_f" id="h_f2"/> 
		<img src="../../resources/image/biometric/hf_woring3.png"  class="h_f" id="h_f2"/>
	</div>
	<div>
		<img src="../../resources/image/biometric/lf_woring1.png"  class="l_f" id="l_f2"/>
		<img src="../../resources/image/biometric/lf_woring2.png"  class="l_f " id="l_f2"/>
		 <img src="../../resources/image/biometric/lf_woring3.png"  class="l_f" id="l_f2"/>
	</div>

	<div>
		<img src="../../resources/image/biometric/hf_woring1.png"  class="h_f" id="h_f3"/> 
		<img src="../../resources/image/biometric/hf_woring2.png"  class="h_f" id="h_f3"/> 
		<img src="../../resources/image/biometric/hf_woring3.png"  class="h_f" id="h_f3"/>
	</div>
	<div>
		<img src="../../resources/image/biometric/lf_woring1.png"  class="l_f" id="l_f3"/>
		<img src="../../resources/image/biometric/lf_woring2.png"  class="l_f" id="l_f3"/>
		 <img src="../../resources/image/biometric/lf_woring3.png"  class="l_f" id="l_f3"/>
	</div>
				<!--  38도 보다 크거나 36도 보다 작거나 -->
	<c:choose>
		<c:when test="${bt1 == bt1 or bt2 == bt2 or bt3 == bt3}">
		<script>
			//저열
			let url = "Warning"
			let option = 'width=600, height=20, top=20, left=200, scrollbars=no, resizeable=no';
			letname = 'myPopup';

			window.open(url, name, option);
		</script>
		</c:when>
		</c:choose>
		


	<!-- 푸터 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>