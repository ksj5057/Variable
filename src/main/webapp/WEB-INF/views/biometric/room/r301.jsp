<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소아과병동 | 301호</title>
<link rel="stylesheet" href="../resources/css/biometric/broom.css" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../../../resources/js/biometric/broom_ajax301.js"></script>
<script type="text/javascript" src="../../../resources/js/biometric/broom301.js"></script>

</head>
<body>

<jsp:include page="../../include/header.jsp"></jsp:include>
<div id="room_body">

<div class = "babyr"><h1 class = "roomn">301호</h1></div>
<div class = "incubator">
	<div id="setting_ment"> 
		<div id="setting_set">
		설정
		</div>
		 
		 <!-- 셋팅 아이콘 -->
		<img src = "../resources/image/biometric/setting.jpg" id="setting"><input type="hidden" value="0" id="pointer">
	</div>
	<div class="setting_icon" id="setting_icon1">
			
				<!--  플러스 마이너스 아이콘 배너 -->
				<img src = "../resources/image/biometric/minus.png" class="icon" id="icon_1">
				<c:if test="${list[0].bname == null}">
				<img src = "../resources/image/biometric/plus.png" class="icon" id="icon_2">
				
				</c:if>
				<img src = "../resources/image/biometric/minus.png" class="icon" id="icon_3">
				<c:if test="${list[1].bname == null}">
				<img src = "../resources/image/biometric/plus.png" class="icon" id="icon_4">
				</c:if>
				<img src = "../resources/image/biometric/minus.png" class="icon" id="icon_5">
				
				<c:if test="${list[2].bname == null}">
				<img src = "../resources/image/biometric/plus.png" class="icon" id="icon_6">
				</c:if>
			</div>
			
			
			<div id="aaaa">
			<!--  301호 db에 등록된 정보값 가져와서 테이블로 출력 -->
			<c:forEach items="${list}" var="baby" begin="0" end="2" varStatus="a">
			
			<div id="bbbb">
			<a href = "babydetail?bno=${baby.bno}" class="baby_image">
			<!-- 아기 이미지  -->
				<img src = "../resources/image/biobaby/${baby.bimage}" width = "225px" height = "300px" id="baby_${a.index}">
			</a>
			<div id="tem_ment">
					<div class = "bname" id="check_baby_id${a.index}" ><a href = "babydetail?bno=${baby.bno}" >${baby.bname} </a></div>
					<input type="hidden" value="${baby.bno}" id = "baby_bno${a.index}">
					<div>현재 체온 : ℃</div>
					<div>체온이 높습니다</div>
					<div>체온이 낮습니다</div>
			</div>
			</div>
</c:forEach>
	</div>
</div>
</div>

		<!-- 아기 등록 창-->
		<!-- 아기 등록 리스트의 창 301호에 등록되어있지 않은 아이만 보임. -->
		<input type="hidden" value="bt301" id ="bt">
		<c:forEach begin="0" end="2"  varStatus="c">
		<div id="insert_baby_table${c.index}">
			<table class = "insert_baby_console" border = "1">
				<tr>
					<td class = "insert_f">이&emsp;&emsp;&emsp;름</td> 
					<td><input type="text" name="bname" id="insert_baby_name${c.index}" maxlength="10"  readonly ></td>
				</tr>
				
				<tr>
					<td class = "insert_f">차 트 번 호</td>
					<td> <input type="text" name="bno" id="insert_baby_bno${c.index}" maxlength="10" readonly ></td>
				</tr>
			
<!-- 				<tr> -->
<!-- 					<td colspan="2"> -->
<%-- 					<input type="button" value="등   록" id="in${c.index}"></td> --%>
<!-- 				<tr> -->
<!-- 				</tr> -->
		
				<tr>
					<td colspan="2" id="view_list">리&emsp;스&emsp;트</td>
				</tr>
				<tr>
				
					<td class = "insert_f">이&emsp;&emsp;&emsp;름</td><td>차 트 번 호</td>
				</tr>
				<c:forEach items="${bt301}" var ="baby" >
				<tr class = "insert_baby_nn">
					<td id = "insert_f_n" class = "insert_f_nn">
						<!--  아기 등록 테이블 아이디(bname) -->
						<div id="baby_name" class="cursor_test" onclick="insert${c.index}('${baby.bname}', '${baby.bno}')">${baby.bname}</div>
					</td>
					<td class = "insert_f_nn">
						<!--  아기 등록 테이블 차트번호(bno)-->
						<div id="baby_bno" class="cursor_test" onclick="insert${c.index}('${baby.bname}','${baby.bno}')">${baby.bno}</div>
					</td>
					
				</tr>
				</c:forEach>
				<caption id = "t_caption">
					<input type="button" value="등   록" id="in${c.index}">
				</caption>
			</table>
						
		
		
		</div>
		</c:forEach>
		<!--푸터  -->
<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>