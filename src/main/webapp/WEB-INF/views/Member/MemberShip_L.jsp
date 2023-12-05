<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">

.tit_h5 {
    font-size: 21px;
    color: #1a1a1a;
    background: url(/front/images/member/bg_bar.gif) no-repeat 0 0;
    padding-top: 10px;
    font-weight: 600;
    margin-bottom: 17px;
    font-family: KoPub Dotum, 'KoPub Dotum';
    }
    
    .table_type2 {
    border-top: 2px solid #2c59b4;
    width: 100%;
    }
    
    img, fieldset, iframe {
    border: none;
}

.container_wrapper {
    position: relative;
    z-index: 0;
    width: 100%;
    background: #fff;
    padding-bottom: 50px;
    
    }
/* 화살표 */
.slick-arrow {
	z-index: 2; /* prev버튼은 위치 이동시 이미지 뒤로 숨겨짐 */
	position: absolute; /* 원하는 위치에 지정 */
	top: 50%;
	width: 50px;
	height: 50px;
	transform: translateY(-25px);
}

.add_member_ul li {
    margin: 7px 0;
    background: url(views/image/member/ico_dot.gif) no-repeat 0 5px;
    color: #444;
    text-align: left;
    padding-left: 10px;
    font-size: 13px;
    line-height: 1.4;
}

/* prev 이전 */
.slickPrev.slick-arrow {
	left: 0;
}
/* next 다음 */
.slickNext.slick-arrow {
	right: 0;
}
/* 아래점 */
.slick-dots {
	text-align: center;
}

.slick-dots li {
	display: inline-block;
	margin: 0 5px;
}

.slick-items {
	position: relative;
}

.slick-items li {
	height: auto;
}

.slick-items a {
	height: auto;
}

.slick-items p {
	height: auto;
}

.slick-items .slick-dots {
	position: absolute;
	bottom: 15px;
	left: 55px;
	z-index: 1000;
}

.slick-items .slick-dots li {
	display: inline-block;
	margin-left: 5px;
}

.slick-items .slick-dots li button {
	display: block;
	width: 12px;
	height: 12px;
	background: #ddd;
	border: 3px solid #ddd;
	border-radius: 12px;
	text-indent: -9999px;
	cursor: pointer;
}

.slick-items .slick-dots li.slick-active button {
	background: transparent;
	border: 3px solid #ddd;
}

.slick_buttons {
	position: absolute;
	bottom: 20px;
	left: 10px;
}

.slick_buttons button {
	display: inline-block;
	width: 15px;
	height: 15px;
	margin-right: 5px;
	border: 1px solid #fff;
	border-radius: 15p;
	background: #fff;
	overflow: hidden;
	text-indent: -9999px;
	box-sizing: border-box;
	cursor: pointer;
	vertical-align: middle;
}

.slick_buttons button.slick_stop {
	background: #fff url(/front/images/main/btn_stop.png) no-repeat center
		center;
}

.slick_buttons button.slick_play {
	background: #fff url(/front/images/main/btn_play.png) no-repeat center
		center;
}

.bh_main_open_event_pop .slick-items .slick-dots {
	position: absolute;
	bottom: 15px;
	right: 10px;
	z-index: 1000;
}

.tooltip {
	position: absolute;
	width: 90%;
	max-width: 520px;
	bottom: 110%;
	left: 50%;
	z-index: -1;
	transform: translateX(-50%);
	opacity: 0;
	box-shadow: 5px 0 10px rgba(0, 0, 0, 0.8);
	transition: all .3s;
}

.tooltip.active {
	opacity: 1;
	z-index: 100;
	bottom: 120%;
}

.tooltip .inner {
	position: relative;
	width: 100%;
	border-radius: 5px;
}

.tooltip .inner:before {
	position: absolute;
	bottom: -14px;
	left: 50%;
	margin-left: -7.5px;
	z-index: 100;
	display: block;
	border-top: 15px solid #fff;
	border-left: 10px solid transparent;
	border-right: 10px solid transparent;
	border-bottom: 0px solid transparent;
	content: "";
}

.tooltip .inner img {
	width: 100%;
}

.table_type2 th {
	background: #f7f7f7;
	font-weight: 600;
	color: #2d58b6;
	font-size: 13px;
	text-align: left;
	padding: 10px 15px;
	border: 1px solid #c6ccd8;
	display: block;
	border-bottom: 0;
	border-left: 0;
	border-right: 0;
}

.table_type2 td {
	border: 1px solid #c6ccd8;
	padding: 10px 15px;
	font-size: 13px;
	color: #666;
}

.input_text {
	border: 1px solid #d6d6d6;
	height: 17px;
	padding: 7px 8px;
	width: 410px;
}

.skip {
	font-size: 1px;
	height: 1px;
	line-height: 1px;
	overflow: hidden;
	position: absolute;
	text-indent: 4px;
	white-space: nowrap;
	width: 1px;
}

.input_text2 {
	border: 1px solid #d6d6d6;
	height: 17px;
	padding: 7px 8px;
}

.input_text10 {
	border: 1px solid #d6d6d6;
	height: 17px;
	padding: 7px 8px;
	width: 410px;
}

.input_select1 {
	border: 1px solid #d6d6d6;
	height: 32px;
	padding: 7px 8px;
	color: #666;
}

.btn_gray {
	color: #fff;
	font-size: 13px;
	font-weight: 600;
	background: #717682 url(/front/images/member/bg_dot1.gif) no-repeat 90%
		50%;
	display: inline-block;
	padding: 8px 30px 9px 10px;
}

.join_section_last .btn_center .btn_ok {
	width: 130px;
	padding: 0;
}

.btn_center .btn_ok {
	color: #fff;
	font-size: 14px;
	border: 1px solid #2749ac;
	background: #2749ac;
	text-align: center;
	padding: 0 30px;
	font-weight: 600;
	height: 36px;
	line-height: 36px;
	vertical-align: top;
	display: inline-block;
	cursor: pointer;
}

.btn_center a.btn_cancel {
	border: 1px solid #adb2bd;
	color: #4f5563;
	font-size: 14px;
	background: #fff;
	text-align: center;
	padding: 0 30px;
	font-weight: 600;
	height: 34px;
	line-height: 34px;
	vertical-align: top;
	display: inline-block;
	cursor: pointer;
}

.btn_center {
	margin: 35px 0;
	text-align: center;
}

.cor_point {
	font-weight: 600;
	line-height: 1.4;
	color: #ff5d00;
	font-size: 13px;
	text-indent: -12px;
	display: inline-block;
	padding-left: 12px;
}
.bh_pw_pattern p {
    width: 200px;
    height: 5px;
    background: #fff;
    margin-top: 6px;
    }
    
    
</style>
</head>
<body>
<div id="container_wrapper">
	<div class="mt30">
		<h5 class="tit_h5">통합회원기본 정보</h5>
		<form name="editForm" action="join_persist.do" method="post"
			onsubmit="return checkformField( this, null );">

			<input type="hidden" id="roadFullAddr" name="roadFullAddr"
				style="width: 85%">
			<!--전체 도로명주소  -->
			<input type="hidden" id="roadAddrPart1" name="roadAddrPart1"
				style="width: 85%">
			<!--주소  -->
			<input type="hidden" id="jibunAddr" name="jibunAddr"
				style="width: 40%" value="">
			<!-- 상세주소  -->
			<input type="hidden" id="zipNo" name="zipNo" style="width: 40%"
				value="">
			<!--우편번호  -->
			<input type="hidden" id="rnMgtSn" name="rnMgtSn" style="width: 40%"
				value="">
			<!-- 도로명코드  -->

			<input type="hidden" id="bdNm" name="bdNm" style="width: 40%"
				value="">
			<!-- 건물명  -->
			<input type="hidden" id="siNm" name="siNm" style="width: 40%"
				value="">
			<!-- 시도명  -->
			<input type="hidden" id="sggNm" name="sggNm" style="width: 40%"
				value="">
			<!-- 시군구명  -->
			<input type="hidden" id="emdNm" name="emdNm" style="width: 40%"
				value="">
			<!-- 읍면동명  -->
			<input type="hidden" id="liNm" name="liNm" style="width: 40%"
				value="">
			<!-- 법정리명  -->

			<input type="hidden" id="rn" name="rn" style="width: 40%" value="">
			<!-- 도로명  -->
			<input type="hidden" id="buldMnnm" name="buldMnnm" style="width: 40%"
				value="">
			<!-- 건물본명  -->
			<input type="hidden" id="buldSlno" name="buldSlno" style="width: 40%"
				value="">
			<!-- 건물부번  -->
			<input type="hidden" id="lnbrMnnm" name="lnbrMnnm" style="width: 40%"
				value="">
			<!-- 지번본번  -->
			<input type="hidden" id="emdNo" name="emdNo" style="width: 40%"
				value="">
			<!-- 읍면동일련번호  -->

			<input type="hidden" name="sex" value="M">

			<fieldset>

				<table class="table_type2">
					<tbody>
						<tr>
							<th>이름 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td><input class="input_text" type="text" name="username"
								id="name"> <strong class="cor_point"><span
									id="checkName"></span></strong></td>
							<th>생년월일 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong>
							</th>
							<td><input class="input_text" type="text" name="birth"
								id="birth"></td>
						</tr>

						<tr>
							<th>아이디 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<label for="id" class="skip">아이디</label> <input
										class="input_text" type="text" id="id" name="userid"
										maxlength="20"
										onblur="checkform( document.editForm, 'blur' );">
									<!-- <a class="btn_id_check" href="javascript:void(0);" onclick="fnCheckid();">중복확인</a>  -->
									<strong class="cor_point"><span id="check"></span></strong>
								</p>
								<ul class="add_member_ul">
									<li>아이디는 5~20자의 영어소문자,숫자만 사용가능합니다.</li>
									<li class="cor_blue">탈퇴 후 재가입 시 동일 아이디 사용이 불가 합니다.</li>

								</ul>
							</td>
						</tr>





						<tr>
							<th>비밀번호 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<div>
									<label for="password" class="skip">비밀번호</label> <input
										class="input_text" type="password" id="password"
										name="password" maxlength="20" onkeyup="PassSecurity.Check()">
									<!-- <strong class="cor_point"><span id="pwCheck"></span></strong> -->
									<div class="bh_pw_pattern">비밀번호 안전성 : <strong id="pw_pattern01" class=""><span
											id="pwCheck"></span></strong>
										<!-- 01~05 -->
										<p>
											<span id="pw_pattern02" class=""></span>
										</p>
										<!-- 01~05 -->
									</div>
									<strong class="cor_point"><span id="pwChk"></span></strong>
								</div>
								<ul class="add_member_ul">
									<li>비밀번호는 영어대소문자,숫자,특수문자만 사용 가능합니다. <br> - 2종류 조합 시
										10자리 이상 사용 가능 <br> - 3종류 조합 시 9자리 이상 사용 가능 <br> -
										사용가능 특수문자: !@#$%^* <!-- <br />2종류 조합은 10자리 이상, 3종류 조합은 9자리 이상 가능합니다. -->

									</li>
								</ul>
							</td>
						</tr>

						<tr>
							<th>비밀번호 확인 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<label for="password2" class="skip">비밀번호 확인</label> <input
										class="input_text" type="password" id="password2"
										name="re_password" onkeyup="PassSecurity.ReCheck()"> <strong
										class="cor_point"><span id="rePwChk"></span></strong>
								</p>
							</td>
						</tr>

						<tr>
							<th>우편번호 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<input type="hidden" name="zip_seq_no" value=""> <input
										class="input_text2" type="text" readonly="readonly"
										title="우편번호" id="postNum" name="zipcd" value=""> <em></em>
									<a href="javascript:void(0)" onclick="goPopup();"
										class="btn_gray" title="새 창 열림">우편번호 검색</a> <strong
										class="cor_point"><span id="checkZip1"></span></strong> <strong
										class="cor_point"><span id="checkZip1"></span></strong>
								</p>
							</td>
						</tr>

						<tr>
							<th>주소 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<label for="address" class="skip">주소</label> <input
										class="input_text10" type="text" readonly="readonly"
										title="주소" id="address" name="addr" maxlength="50" value="">
									<strong class="cor_point"><span id="checkZip2"></span></strong>
								</p>
							</td>
						</tr>

						<tr>
							<th>상세주소 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<label for="addressDetail" class="skip">상세주소</label> <input
										class="input_text10" type="text" title="상세주소"
										id="addressDetail" name="detl_addr" maxlength="50" value="">
									<strong class="cor_point"><span id="checkZip3"></span></strong>
								</p>
							</td>
						</tr>

						<tr>
							<th>집 전화번호</th>
							<td colspan="3">
								<p>
									<label for="phone" class="skip">집 전화번호</label> <select
										class="input_select1" title="집 전화번호 지역번호 선택" id="phone"
										name="tel_no01">
										<option value="">선택</option>
										<option value="02">02</option>
										<option value="031">031</option>
										<option value="032">032</option>
										<option value="033">033</option>
										<option value="041">041</option>
										<option value="042">042</option>
										<option value="043">043</option>
										<option value="044">044</option>
										<option value="051">051</option>
										<option value="052">052</option>
										<option value="054">054</option>
										<option value="055">055</option>
										<option value="061">061</option>
										<option value="062">062</option>
										<option value="063">063</option>
										<option value="064">064</option>
										<option value="070">070</option>
									</select> <span class="empty">- </span> <input class="input_text2"
										type="tel" maxlength="4" title="집 전화번호 중간자리" name="tel_no02">
									<span class="empty">- </span> <input class="input_text2"
										type="tel" maxlength="4" title="집 전화번호 끝자리" name="tel_no03">
									<strong class="cor_point"><span id="checkTel"></span></strong>
								</p>
							</td>
						</tr>

						<tr>
							<th>핸드폰 번호 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<label for="cellPhone" class="skip">핸드폰 번호1</label> <select
										class="input_select1" title="핸드폰 번호 앞자리 선택" id="cellPhone"
										name="hp_no01">
										<option value="">선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select> <span class="empty">- </span> <input class="input_text2"
										type="tel" maxlength="4" title="핸드폰 번호 중간자리" name="hp_no02">
									<span class="empty">- </span> <input class="input_text2"
										type="tel" maxlength="4" title="핸드폰 번호 끝자리" name="hp_no03">
									<strong class="cor_point"><span id="checkPhone"></span></strong>
								</p>
							</td>
						</tr>

						<tr>
							<th>E-mail 주소 <strong class="cor_point">*<span
									class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p class="mb5">
									<label for="email" class="skip">이메일 아이디</label> <input
										class="input_text2" type="text" title="이메일 아이디" id="email"
										name="email01"> <span class="empty">@</span> <label
										for="email02s" class="skip">이메일 계정</label> <input
										class="input_text2" type="text" title="이메일 계정" name="email02"
										id="email02s"><em></em> <strong class="cor_point"><span
										id="checkEmail"></span></strong>
								</p> <span class="reception"> <input type="radio"
									name="email_rcv_yn" id="re" value="Y" checked="checked">
									<label for="re">수신</label> <input type="radio"
									name="email_rcv_yn" id="nore" value="N"> <label
									for="nore">수신거부</label>


							</span>
								<p class="mt10">
									<strong> · E-mail 수신 허용은 Health Plus(웹진) 발송 시 활용 됩니다.

									</strong>
								</p>
							</td>
						</tr>



					</tbody>
				</table>

				<p class="btn_center">
					<input class="btn_ok" type="submit" value="회원가입"> <a
						class="btn_cancel" href="#">회원가입취소</a>
				</p>
			</fieldset>
		</form>

	</div>

</div>

</body>
</html>