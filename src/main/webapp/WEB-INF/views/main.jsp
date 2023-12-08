<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<!-- 외부 CSS 스타일 시트 적용 -->
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">

<meta charset="UTF-8">
<title>그린대학교병원</title>
</head>
<body>

<div class="body_wrapper_m">
	<div class="common_wrapper_m">		
		<div class="header_wrapper_m">
		
		<div class="header_section_m">
			<div class="header_home_m">			
				<a href="/" class="main_a1_m"> 
				<img src="/resources/image/main/main_hd.jpg" 
				alt="그린대학교병원" width="160px" height="80px">
				</a>
			
			<!-- /메인홈페이지이동 이미지 -->	
						
			<!-- 로그인,회원가입 -->		
				<ul class="header_login_m">
					<li><a href="#">로그인</a></li>
					<li><a href="#">회원가입</a></li>
				</ul>			
			</div>
			<!-- 메인홈페이지이동 이미지 -->
			
			<!-- /메인img, 로그인버튼 div -->
			
				<!--검색-->
			<div class="header_search_m">
			<div class="search_from_m">	
				<input class="search_text" id="bh_search_txts" type="text" 
				name="search_txt" placeholder="예) 질병명 , 의료진명"> 
				<input class="btn_search" type="submit" value="통합검색">
			</div>			
			</div>
				<!--/검색-->
			</div>
			</div>

		<!-- /헤더 끝ㅇㅇ -->

<hr>

	<!--container_wrapper-->
	<div class="container_wrapper_m" id="bh_container_m">
	<!--contents_section-->
	<div class="main_conts_set_m">
		<h2 class="skip_m">배경</h2>
		<img src="/resources/image/main/main_v.jpg" alt="병원이미지">
	</div>

<hr>

<!--메인 메뉴-->
<div class="main_menu_section_m">
	<h2 class="skip_m">메뉴</h2>
	
			<!--pc 로그인을 하면 pc_login클래스 선언-->
			<ul class="m_ddd_m">
			
			<!--간편예약상담-->
			<li class="main_li_1">
				<a href="#">
				<dl>
					<dt> 첫 방문 예약상담 </dt>
					<dd>처음 진료받는 분을 위한 예약상담</dd>
				</dl>
				</a>
			</li>
			<!--/간편예약상담-->
			
			<!--예약현황조회-->
			<li class="main_li_2">
				<a href="#">
				<dl>
					<dt>예약현황조회</dt>
					<dd>진료예약현황을 조회</dd>
				</dl>
				</a>
			</li>
			<!--/예약현황조회-->
			
			<!--의료진/진료과 찾기-->
			<li class="main_li_3">
			<a href="#">
			<dl>
			<dt>의료진/진료과 찾기</dt>
			</a>
			<dd>
			<p>
			<input type="search_m" name="search_txt_m" 
			id="search_txt_m" placeholder="의료진, 진료과 입력">
			</p>
			<p>
			<input type="submit" id="search_btn_m" value="찾기">
			</p>
			</dd>
			</dl>
			</li>
			<!--/의료진/진료과 찾기-->
			
			<!--온라인 예약-->
			<li class="main_li_4">
			<a href="#">
			<dl>
			<dt>온라인 예약</dt>
			<dd>온라인으로 진료예약을 진행</dd>
			</dl>
			</a>
			</li>
			<!--/온라인 예약-->
			
			<!--오시는길-->
			<li class="main_li_5">
			<a href="#">
			<dl>
			<dt>찾아오시는 길</dt>
			<dd>&nbsp;</dd>
			</dl>
			</a>
			</li>
			<!--/오시는길-->
			
			<!--진료비결제-->
			<li class="main_li_6">
			<a href="#">
			<dl>
			<dt>진료비 결제</dt>
			<dd>온라인으로 진료비 결제진행</dd>
			</dl>
			</a>
			</li>
			<!--/진료비결제-->
			
			<!--진료스케쥴-->
			<li class="main_li_7">
			<a href="#">
			<dl>
			<dt>외래진료일정표</dt>
			<dd>진료과별 진료스케쥴 확인</dd>
			</dl>
			</a>
			</li>
			<!--/진료스케쥴-->
			
			<!--증명서/의무기록 발급-->
			<li class="main_li_8">
			<a href="#">
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
	<!-- /main_body -->
</div>
<!-- /main_cont -->
</body>
</html>