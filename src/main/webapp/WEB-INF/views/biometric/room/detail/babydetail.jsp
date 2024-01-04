<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린대학병원 | 상세보기</title>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<link rel="stylesheet" href="../resources/css/biometric/babydetail.css" />
<script type="text/javascript"
	src="../../../resources/js/biometric/babydetail.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<!-- 헤더 -->
	<div>
		<jsp:include page="../../../include/header.jsp"></jsp:include>
	</div>
	<!-- 이미지 넣기 -->
	<div class="baby_main">
		<div id="detail_body">
			<div id="dd">
				<table id="baby_table">
					<tr>
						<td><img src="../../resources/image/bossbaby.jpg"
							id="detail_img" /></td>
					</tr>

				</table>
				<div id="table_rig">
					<table border="1" id="detail_table">
						<tr>
							<td>${'name'}아기</td>
						</tr>
						<tr>
							<td>부모님 연락처 <span>${'010-8888-8888'}</span>
							</td>
						</tr>
						<tr>
							<td>입원일 :</td>
						</tr>
					</table>

					<!-- 진료 내역 -->
					<table border="1" id="baby_Clinic">
						<tr>
							<td>진료 내역:</td>
						</tr>
					</table>
				</div>

				<div id="Measurement">
					<span>측정 기록</span>

					<!-- 현재 날짜 -->
					${now}<br>

					<canvas id="line-chart"> </canvas>
					
					<!-- 차트 데이터 -->
					<script>
						var arr = [20];
// 						ctx.textAlign = "center";
// 						ctx.textBaseline = "middle";
// 						ctx.direction = "rtl";
						new Chart(
								document.getElementById("line-chart"),
								{
									//그래프의 형식
									type : 'line',
									//그래프의 기준값
									data : {
										labels : ["온도/시간", 00, 01, 02, 03, 04, 05, 06,
												07, 08, 09, 10, 11, 12, 13, 14,
												15, 16, 17, 18, 19, 20, 21, 22,
												23 ],

										//데이터 값
										datasets : [ {
											data : [ "온도", arr[0], arr[1], arr[2], arr[3] ],
											//데이터의 이름.
											label : "Temperature",
											borderColor : "#3e95cd",
											fill : false

										} ]
									},
									options : {
										title : {
											display : true,
											//제목
											text : 'Body temperature measurement(체온측정 기록)'
										}
									}
								});
					</script>
				</div>

			</div>
		</div>
	</div>

	<!--푸터  -->
	<div id="footer">
	<jsp:include page="../../../include/footer.jsp"></jsp:include>
	</div>
</body>
</html>