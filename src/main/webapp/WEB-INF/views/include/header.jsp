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

<script type="text/javascript" src="/resources/js/main/header.js"></script>
<meta charset="UTF-8">
<title>그린대학병원</title>
</head>
<body class="maincss">

			<!--header_wrapper-->
			<div class="header_wrapper_m">
				<!--상단 1차메뉴 및 로고 검색-->
				<div class="header_section_m">

					<div class="header_manu_btn_m">
						<h1 class="main_header_ban">
							<a href="/"> <img src="/resources/image/main_img.png"
								alt="그린대학병원" style="height: 70px;"></a>
						</h1>
						<ul class="header_login_m">
							<!-- 로그인하면 안보이게 -->
							<c:if test="${login.id == null}">
								<li><a href="Login_L" id="login_am1">[로그인]</a></li>
								<li><a href="MemberShip_L" id="login_am2">[회원가입]</a></li>
							</c:if>

							<!-- 로그인하면 보이게  -->
							<c:if test="${login.id ne null}">
								<li class="main_name"><a href="#" class="login_name_m">${sessionScope.login.mname}</a>
									님 환영합니다 (˙ ˘ ˙) /
								<li>
									<!-- 관리자 아이디로 로그인했을때만 보이게 --> <c:if
										test="${login.position ne null}">
										<li><a href="chart/chartlist">[차트관리]</a></li>
									</c:if>
								<li><a href="logout">[로그아웃]</a></li>
							</c:if>
						</ul>
					</div>

					<!-- 상단메뉴바 -->
					<div class="menu_btn_mask">
						<button class="open_menu_btn"></button>
						<ul class="bh_snb_ul" style="display: none;">
							<li class="sds_1"><a tabindex="0" href="#">예약</a></li>
							<li class="sds_2"><a tabindex="0" href="#">예약조회 및 취소</a></li>
							<li class="sbs_ul2"><a tabindex="0" href="Certificate_L">증명서/의무기록발급</a>

								<!-- 로그인하면 증명서발급 확인서목록 출력되게 --> <c:if test="${login.id ne null}">
									<ul class="sbs__ul3" style="display: none;">
										<li class="sbs_4"><a
											href="ClinicCertificateDetails_L">진료 확인서</a></li>
										<li class="sbs_5"><a
											href="HospitalizationCertificateDetails_L">입·퇴원
												확인서</a></li>
										<li class="sbs_6"><a
											href="OperationCertificateDetails_L">수술
												확인서</a></li>
									</ul>
								</c:if></li>

							<li class="sds_4"><a tabindex="0" href="#">진료비 결제</a></li>
							<li class="sds_7"><a tabindex="0" href="#">처방동영상</a></li>
							<li class="sds_9"><a tabindex="0" href="#">개인정보</a></li>
						</ul>
					</div>
					<!-- /상단메뉴바 -->

					<!--검색-->
					<div class="header_search_m">
						<input class="" id="bh_search_txts" type="text" name="search_txt"
							placeholder="예) 질병명 , 의료진명   " autocomplete="off"> <input
							id="btn_search" type="submit" value="통합검색">
					</div>
					<!--/검색-->
				</div>
			</div>
			<!--/상단 1차메뉴 및 로고 검색-->

</body>
</html>