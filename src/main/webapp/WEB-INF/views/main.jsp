<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- main.jsp 외부 CSS 스타일 시트 적용 -->
<link rel="stylesheet" href="/resources/css/main.css" />
<meta charset="UTF-8">
<title>그린대학교</title>
</head>
<body class="maincss">

	<!--body_wrapper-->
	<div class="body_wrapper_m">
		<!--common_wrapper-->
		<div class="common_wrapper_m">
			<!--header_wrapper-->
			<div class="header_wrapper_m">

				<!--상단 1차메뉴 및 로고 검색-->
				<div class="header_section_m">
					<h1>
						<a href="/"> <img src="/resources/image/main_logo.png" alt="그린대학교병원"></a>
					</h1>
					<ul class="header_login_m">
<<<<<<< HEAD
					<c:if test="${sessionScope.login.id ne null}">
						<li><a href="Login_L">관리자 전용 페이지</a></li>
					</c:if>
=======
						<li><a href="admin_L">관리자전용</a></li>
>>>>>>> branch 'koo' of https://github.com/ksj5057/Variable.git
						<li><a href="Login_L">로그인</a></li>
						<li><a href="MemberShip_L">회원가입</a></li>
					</ul>

					<!--검색-->
					<div class="header_search_m">
						<input class="" id="bh_search_txts" type="text"
							name="search_txt" placeholder="예) 질병명 , 의료진명   " autocomplete="off">
						<input id="btn_search" type="submit" value="통합검색">
					</div>
					<!--/검색-->
				</div>
			</div>
			<!--/상단 1차메뉴 및 로고 검색-->

			<!--container_wrapper-->
			<div class="main_conts_set_m" id="bh_container">
				<!--contents_section-->
				<h2 class="skip">배경
				</h2>
			</div>

			<!--메인 메뉴-->
			<div class="main_menu_section_m">
				<h2 class="skip">메뉴</h2>

				<ul class="m_ddd_m">

					<!--간편예약상담-->
					<li class="main_li_1">
					<a href="">
							<dl>
								<dt>첫 방문 예약상담</dt>
								<dd>처음 진료받는 분을 위한 예약상담</dd>
								<input type="submit" id="consulting_m" value="상담 신청">
							</dl>
					</a>
					</li>
					<!--/간편예약상담-->

					<!--예약현황조회-->
					<li class="main_li_2">
					<a href="">
							<dl>
								<dt>예약현황조회</dt>
								<dd>진료예약현황을 조회</dd>
							</dl>
					</a>
					</li>
					<!--/예약현황조회-->

					<!--의료진/진료과 찾기-->
					<li class="main_li_3">
						<dl>
							<dt>
								<a href="">의료진 / 진료과 찾기</a>
							</dt>
							<dd>
								<input id="search_txt_m" type="search" name="search_txt"
										placeholder="의료진, 진료과 입력"> 
								<br><input id="search_btn_m" type="submit" value="찾기">
							</dd>
						</dl>
					</li>
					<!--/의료진/진료과 찾기-->

					<!--온라인 예약-->
					<li class="main_li_4">
					<a href="">
							<dl>
								<dt>온라인 예약</dt>
								<dd>온라인으로 진료예약을 진행</dd>
							</dl>
					</a></li>
					<!--/온라인 예약-->

					<!--오시는길-->
					<li class="main_li_5">
					<a href="">
							<dl>
								<dt>찾아오시는 길</dt>
								<dd>&nbsp;</dd>
							</dl>
					</a></li>
					<!--/오시는길-->

					<!--진료비결제-->
					<li class="main_li_6">
					<a href="">
							<dl>
								<dt>진료비 결제</dt>
								<dd>온라인으로 진료비 결제진행</dd>
							</dl>
					</a></li>
					<!--/진료비결제-->

					<!--진료스케쥴-->
					<li class="main_li_7">
					<a href="">
							<dl>
								<dt>외래진료일정표</dt>
								<dd>진료과별 진료스케쥴 확인</dd>
							</dl>
					</a></li>
					<!--/진료스케쥴-->

					<!--증명서/의무기록 발급-->
					<li class="main_li_8">
					<a href="Certificate_L">
							<dl>
								<dt>증명서/의무기록 발급</dt>
								<dd>제증명 발급에 대한 안내</dd>
							</dl>
					</a>
					</li>
					<!--/증명서/의무기록 발급-->

				</ul>
			</div>

		</div>
	</div>
	<!-- /main_cont end -->
</body>
</html>