<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- main.jsp 외부 CSS 스타일 시트 적용 -->
<link rel="stylesheet" href="/resources/css/main.css" />
<meta charset="UTF-8">
<title>그린대학교</title>
</head>
<body>

	<!--body_wrapper-->
	<div class="body_m">
		<!--common_wrapper-->
		<div class="common_m">
			<!--header_wrapper-->
			<div class="header_m">

				<!--상단 1차메뉴 및 로고 검색-->
				<div class="header_section_m">
					<div class="top_header_section fix_m">
						<div class="head_m">
							<div class="lft_tit_section">
								<h1>
									<a href="/main"> <img src="/imge/main/main_head.png"
										alt="그린대학교병원"></a>
								</h1>
								<ul class="utility_section fix">
									<li><a href="Login_L">로그인</a></li>
									<li><a href="MemberShip_L">회원가입</a></li>
									<li><a href="Certificate_L">재증명 발급</a></li>
								</ul>
							</div>
						</div>


						<!--검색-->
						<div class="header_search_section">
							<div class="header_form">
								<form action="/search.do" onsubmit="return chkTxt( this );">
									<fieldset>
										<legend>통합검색</legend>
										<div class="top_search_form">
											<label for="bh_search_txts" class="skip">통합검색 검색어 입력</label>
											<input class="search_text" id="bh_search_txts" type="text"
												name="search_txt" placeholder="예) 질병명 , 의료진명" value=""
												onkeyup="autoComplete( this )" autocomplete="off"> <input
												class="btn_search" type="submit" value="통합검색">
										</div>
									</fieldset>
								</form>
							</div>
						</div>
						<!--/검색-->

					</div>

				</div>
				<!--/상단 1차메뉴 및 로고 검색-->
			</div>




			<hr>




			<!--container_wrapper-->
			<div class="container_wrapper fix" id="bh_container">

				<!--contents_section-->
				<div class="main_conts_set">
					<h2 class="skip">배경</h2>
				</div>
				<hr>
				<!--메인 메뉴-->
				<div class="main_menu_section">
					<h2 class="skip">메뉴</h2>

					<!--모바일 개인화 서비스-->


					<!--pc 로그인을 하면 pc_login클래스 선언-->
					<ul class="m_ddd fix">

						<!--간편예약상담-->
						<li class="main_li_1" style="top: 0px; height: 164px;">
							<dl>
								<dt>
									<a href="/reserve/firstReserve.do">첫 방문 예약상담</a>
								</dt>
								<dd>
									<p class="dec mb10">처음 진료받는 분을 위한 예약상담</p>
								</dd>
							</dl>
						</li>
						<!--/간편예약상담-->

						<!--예약현황조회-->
						<li class="main_li_2" style="top: 0px; height: 164px;"><a
							href="/personal/resvrStatusList.do">
								<dl>
									<dt>예약현황조회</dt>
									<dd>진료예약현황을 조회</dd>
								</dl>
						</a></li>
						<!--/예약현황조회-->

						<!--의료진/진료과 찾기-->
						<li class="main_li_3" style="top: 0px; height: 164px;">
							<dl>
								<dt>
									<a href="/medical/drMedicalTeam2.do">의료진/<span>진료과
											찾기</span></a>
								</dt>
								<dd>
									<fieldset>
										<legend>의료진/진료과 찾기</legend>
										<p class="pd_20 mb5">
											<label class="skip" for="search_txt">의료진, 진료과 입력</label><input
												class="input_text_c" type="search" name="search_txt"
												id="search_txt" placeholder="의료진, 진료과 입력">
										</p>
										<p class="pd_20">
											<input class="btn_blue" type="submit" value="찾기">
										</p>
									</fieldset>
								</dd>
							</dl>
						</li>
						<!--/의료진/진료과 찾기-->

						<!--온라인 예약-->
						<li class="main_li_4" style="top: 0px; height: 164px;"><a
							href="/reserve/onlineReserve.do">
								<dl>
									<dt>온라인 예약</dt>
									<dd>온라인으로 진료예약을 진행</dd>
								</dl>
						</a></li>
						<!--/온라인 예약-->

						<!--오시는길-->
						<li class="main_li_5" style="top: 240px; height: 164px;"><a
							href="/intro/map/road.do">
								<dl>
									<dt>찾아오시는 길</dt>
									<dd>&nbsp;</dd>
								</dl>
						</a></li>
						<!--/오시는길-->

						<!--진료비결제-->
						<li class="main_li_6" style="top: 0px; height: 164px;"><a
							href="/treatmentpay/PayMedicalList.do">
								<dl>
									<dt>진료비 결제</dt>
									<dd>온라인으로 진료비 결제진행</dd>
								</dl>
						</a></li>
						<!--/진료비결제-->

						<!--진료스케쥴-->
						<li class="main_li_7" style="top: 0px; height: 164px;"><a
							href="/medical/deptListTime.do">
								<dl>
									<dt>외래진료일정표</dt>
									<dd>진료과별 진료스케쥴 확인</dd>
								</dl>
						</a></li>
						<!--/진료스케쥴-->

						<!--증명서/의무기록 발급-->
						<li class="main_li_8" style="top: 0px; height: 164px;"><a
							href="/personal/certi/ctfIssue00.do">
								<dl>
									<dt>증명서/의무기록 발급</dt>
									<dd>제증명 발급에 대한 안내</dd>
								</dl>
						</a></li>
						<!--/증명서/의무기록 발급-->
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>