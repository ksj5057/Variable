<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- 외부 main.css 연결 -->
<link rel="stylesheet" href="/resources/css/main.css" />
<!-- 외부 main.js 연결 -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="/resources/js/main/main.js"></script>
<meta charset="UTF-8">
<title>그린대학병원</title>
</head>
<body class="maincss">

	<!--body_wrapper-->
	<div class="body_wrapper_m">
		<!--common_wrapper-->
		<div class="common_wrapper_m">
			<!-- 헤더 -->
			<jsp:include page="include/header.jsp"></jsp:include>

			<!--container_wrapper-->
			<div class="main_conts_set_m" id="bh_container">
				<!--contents_section-->
				<h2 class="skip">배경</h2>
			</div>

			<!--메인 메뉴-->
			<div class="main_menu_section_m">
				<h2 class="skip">메뉴</h2>

				<ul class="m_ddd_m">

					<!--간편예약상담-->
					<li class="main_li_1" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>첫 방문 예약상담</dt>
								<dd>처음 진료받는 분을 위한 예약상담</dd>
							</dl>
					</a></li>
					<!--/간편예약상담-->

					<!--예약현황조회-->
					<li class="main_li_2" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>예약현황조회</dt>
								<dd>진료예약현황을 조회</dd>
							</dl>
					</a></li>
					<!--/예약현황조회-->

					<!--의료진/진료과 찾기-->
					<li class="main_li_3" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>의료진 / 진료과 찾기</dt>
								<dd>간편하게 의료진 / 진료과를 찾기</dd>
							</dl>
					</a></li>
					<!--/의료진/진료과 찾기-->

					<!--온라인 예약-->
					<li class="main_li_4" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>온라인 예약</dt>
								<dd>온라인으로 진료예약을 진행</dd>
							</dl>
					</a></li>
					<!--/온라인 예약-->

					<!--오시는길-->
					<li class="main_li_5" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>찾아오시는 길</dt>
								<dd>&nbsp;</dd>
							</dl>
					</a></li>
					<!--/오시는길-->

					<!--진료비결제-->
					<li class="main_li_6" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>진료비 결제</dt>
								<dd>온라인으로 진료비 결제진행</dd>
							</dl>
					</a></li>
					<!--/진료비결제-->

					<!--진료스케쥴-->
					<li class="main_li_7" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="#">
							<dl>
								<dt>외래진료일정표</dt>
								<dd>진료과별 진료스케쥴 확인</dd>
							</dl>
					</a></li>
					<!--/진료스케쥴-->

					<!--증명서/의무기록 발급-->
					<li class="main_li_8" onmouseenter="zoomIn(event)"
						onmouseleave="zoomOut(event)"><a href="Certificate_L">
							<dl>
								<dt>증명서/의무기록 발급</dt>
								<dd>제증명 발급에 대한 안내</dd>
							</dl>
					</a></li>
					<!--/증명서/의무기록 발급-->
				</ul>
			</div>
		</div>
		<!-- 푸터 -->
		<jsp:include page="include/footer.jsp"></jsp:include>

	</div>

	<!-- /main_cont end -->
</body>
</html>