<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증명서 발급</title>
<link rel="stylesheet" href="/resources/css/Certificate/Certificate.css">
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="contents_section">
		<div class="contents_section_L">
			<div class="bh_mgb35">
				<h5 class="tit_h5">온라인 발급 (병원 방문 없이 인터넷(휴대폰/PC) 신청 후 직접 발급 가능)</h5>
			</div>
			<div class="bh_mgb35">
				<h6 class="tit_h4">신청 절차</h6>
				<div class="bh_flow_circle8_wrap">
					<ol class="bh_flow_circle8_ol sty1">
						<li class="bh_flow_circle8_li_1"><strong>로그인<span></span></strong></li>
						<li class="bh_flow_circle8_li_2"><strong>신청 및 <span></span>구비서류
								업로드
						</strong></li>
						<li class="bh_flow_circle8_li_3"><strong>담당자 확인<span></span><em><br>(업무일
									기준 최대 3일 소요)</em></strong></li>
						<li class="bh_flow_circle8_li_4"><strong>온라인 결제<span></span><em><br>(본인
									신분 확인)</em></strong></li>
						<li class="bh_flow_circle8_li_5"><strong>출력 또는<span></span>PDF
								다운로드
						</strong></li>
					</ol>
				</div>
			</div>
			<br>

			<p class="bh_normal_txt">- 온라인 의무기록사본 발급은 환자 본인과 환자의 친족에 한해서만
				가능합니다.(관련근거 의료법 시행규칙 제13조의3)</p>
			<p class="bh_normal_txt">
				- <em class="bh_color_red">영상자료(CD/DVD)는 직접 방문하셔야 발급 가능합니다(온라인
					신청 불가)</em>
			</p>
		</div>
		<div class="bh_mgb35">
			<ul class="bh_normal_txt">
				<li>* 진료기록(외래기록, 입원기록 등), 검사결과지(혈액검사, 소변검사, 조직검사, CT판독 결과 등)
					사본발급이 가능합니다.</li>
				<li>* 진료확인서, 영수증, 세부내역서 등은 온라인증명서 신청에서 발급가능합니다.</li>
				<li>* PDF 다운로드 시, 별도 수수료(\2,200원) 발생합니다.</li>
			</ul>
		</div>
		<section class="subContents">
			<div class="contBlock">

				<div class="contents_form">
					<!-- 증명서 발급 -->
					<div class="ctfIssue_section">
						<div class="ctfBox_wrap">
							<div class="ctfBox sty01">
								<div class="ctfBox_header">
									<!--  진료확인서 -->
									<p class="tit">진료 확인서</p>
									<p class="txt">
										<br>
									</p>
								</div>
								<div class="ctfBox_contents">
									<p class="tit">확인 사항</p>
									<p class="bul_sty">이름 및 주민등록번호가 기재되어 있음</p>
									<p class="bul_sty">통원 일자만 기재되어 있음</p>
									<p class="bul_sty">개인정보 유출에 주의</p>
								</div>
								<div class="ctfBox_btm">
									<a href="ClinicCertificateDetails_L"><span>발급 받기</span></a>
								</div>
							</div>

							<!--  입퇴원확인서-->
							<div class="ctfBox sty02">
								<div class="ctfBox_header">
									<p class="tit">입·퇴원 확인서</p>
									<p class="txt">
										<br>
									</p>
								</div>
								<div class="ctfBox_contents">
									<p class="tit">확인 사항</p>
									<p class="bul_sty">이름 및 주민등록번호가 기재되어 있음</p>
									<p class="bul_sty">입원 기간만 기재되어 있음</p>
									<p class="bul_sty">개인정보 유출에 주의</p>
								</div>
								<div class="ctfBox_btm">
									<a href="HospitalizationCertificateDetails_L"><span>발급
											받기</span></a>
								</div>
							</div>

							<!--  수술확인서-->
							<div class="ctfBox sty03">
								<div class="ctfBox_header">
									<p class="tit">수술 확인서</p>
									<p class="txt">
										<br>
									</p>
								</div>

								<div class="ctfBox_contents">
									<p class="tit">확인 사항</p>
									<p class="bul_sty">이름 및 주민등록번호가 기재되어 있음</p>
									<p class="bul_sty">병명 및 수술내역이 기재되어 있음</p>
									<p class="bul_sty">개인정보 유출에 주의</p>
								</div>
								<div class="ctfBox_btm">
									<a href="OperationCertificateDetails_L"><span>발급 받기</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>



	</div>
</body>
</html>