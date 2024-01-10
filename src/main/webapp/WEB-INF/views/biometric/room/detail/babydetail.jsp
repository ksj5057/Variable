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
				<div id = baby_info> 
					<table id="baby_table">
						<tr>
							<td><img src="../../resources/image/biobaby/${babydetail.bimage}"
								id="detail_img" /></td>
						</tr>
	
					</table>
					<div id="table_rig">
						<table border="1" id="detail_table" >
							<tr>
								<td class = "detail_f">환자 이름</td>
								<td class = "detail_s">${babydetail.bname}</td>
							</tr>
							<tr>
								<td class = "detail_f">보호자 이름</td>
								<td class = "detail_s">${babydetail.mname}</td>
							</tr>
							<tr>
								<td class = "detail_f">보호자 번호</td>
								<td class = "detail_s">${babydetail.mnumber}</td>
							</tr>
							<tr>
								<td class = "detail_f">보호자2 이름</td>
								<td class = "detail_s">${babydetail.fname}</td>
							</tr>
							<tr>
								<td class = "detail_f">보호자2 번호 </td>
								<td class = "detail_s">${babydetail.fnumber}</td>
							</tr>
						</table>
					</div>
					<!-- 진료 내역 -->
<!-- 					<table border="1" id="baby_Clinic"> -->
<!-- 						<tr> -->
<!-- 							<td>진료 내역:</td> -->
<!-- 						</tr> -->
<!-- 					</table> -->
				</div>

				<div id="Measurement">
					<span>측정 기록</span>

					<!-- 현재 날짜 -->
					${now}<br>

					<canvas id="line-chart"> </canvas>
					
					<!-- 차트 데이터 -->
					<script>
					//y축에 시간을 담고
					var y;
					//x축에 온도를 담는다
					var x;
					
					
						new Chart(
								document.getElementById("line-chart"),
								{
									//그래프의 형식
									type : 'line',
									//그래프의 기준값   y축
									data : {
										labels : [1,2,3,4,5  ],

										//데이터 값 x축
										datasets : [ {
											
											data : [  ],
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