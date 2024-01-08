<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소아과병동 | 302호</title>
<link rel="stylesheet" href="../resources/css/biometric/broom302.css" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../../../resources/js/biometric/broom302_ajax.js"></script>
<script type="text/javascript" src="../../../resources/js/biometric/broom302.js"></script>

</head>
<body>

<jsp:include page="../../include/header.jsp"></jsp:include>
<div id="room_body">

<div class = "babyr"><h1 class = "roomn">302호</h1></div>
		
<div class = "incubator">
	<div id="setting_ment"> 
		<div id="setting_set">
		설정
		</div>
		<img src = "../resources/image/biometric/setting.jpg" id="setting"><input type="hidden" value="0" id="pointer">
	</div>
	<c:forEach items="${bt302}" var="baby" begin="0" end="0">
	<ul class = "babylist">
		<li>
			<div class="setting_icon">
				<img src = "../resources/image/biometric/minus.png" class="icon" id="icon_1">
				<img src = "../resources/image/biometric/plus.png" class="icon" id="icon_2">
			</div>
			
			<!-- 플러스 이미지 -->
			<div class="check_posi1">
				<img src = "../resources/image/biometric/minus.png" class="icon2" id="check_icon1">
			</div>
			
			<!-- 마이너스 이미지 -->
			<div class="check_posi1">
				<img src = "../resources/image/biometric/plus.png" class="icon2" id="check_icon2">
			</div>
		</li>
		<li class = "baby1" id="room_302_1">
			<a href = "babydetail?bno=${baby.bno}" class="baby_image">
			<!-- 아기 이미지  -->
				<img src = "../resources/image/biobaby/${baby.bimage}" width = "225px" height = "300px" id="baby_1">
			</a>
	</ul> 
			<div id="tem_ment1">
					<div class = "bname"><a href = "babydetail" >${baby.bname}</a></div>
					<div>현재 체온 : ℃</div>
					<div>체온이 높습니다</div>
					<div>체온이 낮습니다</div>
			</div>
			</c:forEach>
			<c:forEach items="${bt302}" var="b1" begin="1" end="1">
	<ul class = "babylist">
		<li>
			<div class="setting_icon">
				<img src = "../resources/image/biometric/minus.png" class="icon" id="icon_3">
				<img src = "../resources/image/biometric/plus.png" class="icon" id="icon_4">
			</div>
			<div class="check_posi2">
				<img src = "../resources/image/biometric/minus.png" class="icon2" id="check_icon3">
			</div>
			<div class="check_posi2">
				<img src = "../resources/image/biometric/plus.png" class="icon2" id="check_icon4">
			</div>
		</li>
		<li class="baby1" id="room_302_2">
		<a href="babydetail" class="baby_image">
			<img src="../resources/image/biobaby/anya.jpg" width="225px" height="300px" id="baby_2">
		</a>
	</ul>
		<div id="tem_ment2">
					<div class = "bname"><a href = "babydetail" ></a></div>
					<div>현재 체온 : ℃</div>
					<div>체온이 높습니다</div>
					<div>체온이 낮습니다</div>
			</div>
	</c:forEach>
	<c:forEach items="${bt302}" var="b1" begin="2" end="2">
	<ul class = "babylist">
		<li>
			<div class="setting_icon" >
				<img src = "../resources/image/biometric/minus.png" class="icon" id="icon_5">
				<img src = "../resources/image/biometric/plus.png" class="icon" id="icon_6">
			</div>
			<div class="check_posi3">
				<img src = "../resources/image/biometric/minus.png" class="icon2" id="check_icon5">
			</div>
			<div class="check_posi3">
				<img src = "../resources/image/biometric/plus.png" class="icon2" id="check_icon6">
			</div>
		</li>
		<li class = "baby1" id="room_302_3">
			<a href = "babydetail" class="baby_image">
				<img src = "../resources/image/biobaby/rlcjf.jpg" width = "225px" height = "300px" id="baby_3">
			</a>
	</ul>
		<div id="tem_ment3">
					<div class = "bname"><a href = "babydetail" ></a></div>
					<div>현재 체온 : ℃</div>
					<div>체온이 높습니다</div>
					<div>체온이 낮습니다</div>
			</div>
			</c:forEach>
	
</div>
</div>
		<!-- 아기 등록 창-->
		<div id="insert_baby_table1">
			<table border="1">
				<tr>
				<td>이&emsp;&emsp;&emsp;름</td> <td><input type="text" name="bname" id="insert_baby_name1" maxlength="10"  readonly ></td>
				</tr>
				<tr>
				<td>차 트 번 호</td><td> <input type="text" name="bno" id="insert_baby_bno1" maxlength="10" readonly ></td>
				</tr>
				<tr>
				<td colspan="2"><input type="button" value="등   록" id="in1"></td>
				<tr>
				</tr>
				<tr>
				<td colspan="2" id="view_list">리&emsp;스&emsp;트</td>
				</tr>
				<tr>
				<td >이&emsp;&emsp;&emsp;름</td><td>차 트 번 호</td>
				</tr>
				<tr>
				<td>
					<c:forEach items="${list}" var="baby_in">
					<div id="baby_name" class="cursor_test" onclick="insert1('${baby_in.bname}', '${baby_in.bno} ')">${baby_in.bname}</div>
					</c:forEach>
				</td>
				<td>
					<c:forEach items="${list}" var="baby_in">
					<div id="baby_bno" class="cursor_test" onclick="insert1('${baby_in.bname}', '${baby_in.bno} ')">${baby_in.bno}</div>
					</c:forEach>
				</td>
				</tr>
			</table>
		
		
		</div>
		
		<div id="insert_baby_table2">
			<table border="1">
				<tr>
				<td>이&emsp;&emsp;&emsp;름</td> <td><input type="text"  name="bname"  id="insert_baby_name2" maxlength="10"  readonly ></td>
				</tr>
				<tr>
				<td>차 트 번 호</td><td> <input type="text" name="bno" id="insert_baby_bno2" maxlength="10" readonly ></td>
				</tr>
				<tr>
				<td colspan="2"><input type="button" value="등   록" id="in2"></td>
				<tr>
				</tr>
				<tr>
				<td colspan="2" id="view_list">리&emsp;스&emsp;트</td>
				</tr>
				<tr>
				<td >이&emsp;&emsp;&emsp;름</td><td>차 트 번 호</td>
				</tr>
				<tr>
				<td>
					<c:forEach items="${list}" var="baby_in">
					<div id="baby_name" class="cursor_test" onclick="insert2('${baby_in.bname}', '${baby_in.bno} ')">${baby_in.bname}</div>
					</c:forEach>
				</td>
				<td>
					<c:forEach items="${list}" var="baby_in">
					<div id="baby_bno" class="cursor_test" onclick="insert2('${baby_in.bname}', '${baby_in.bno} ')">${baby_in.bno}</div>
					</c:forEach>
				</td>
				</tr>
			</table>
		
		
		</div>
		
		<div id="insert_baby_table3">
			<table border="1">
				<tr>
				<td>이&emsp;&emsp;&emsp;름</td> <td><input type="text" name="bname"  id="insert_baby_name3" maxlength="10"  readonly ></td>
				</tr>
				<tr>
				<td>차 트 번 호</td><td> <input type="text" name="bno" id="insert_baby_bno3" maxlength="10" readonly ></td>
				</tr>
				<tr>
				<td colspan="2"><input type="button" value="등   록" id="in3"></td>
				<tr>
				</tr>
				<tr>
				<td colspan="2" id="view_list">리&emsp;스&emsp;트</td>
				</tr>
				<tr>
				<td >이&emsp;&emsp;&emsp;름</td><td>차 트 번 호</td>
				</tr>
				<tr>
				<td>
					<c:forEach items="${list}" var="baby_in">
					<div id="baby_name" class="cursor_test" onclick="insert3('${baby_in.bname}', '${baby_in.bno} ')">${baby_in.bname}</div>
					</c:forEach>
				</td>
				<td>
					<c:forEach items="${list}" var="baby_in">
					<div id="baby_bno" class="cursor_test" onclick="insert3('${baby_in.bname}', '${baby_in.bno} ')">${baby_in.bno}</div>
					</c:forEach>
				</td>
				</tr>
			</table>
		
		
		</div>
	
		<!--푸터  -->
<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>