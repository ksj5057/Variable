<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/MemberShip.css">	
<script src="/../../resources/js/member/MemberShip.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<style>

</style>
</head>
<body>
<div id="container_wrapper">
	<div class="mt30">
		<h5 class="tit_h5">통합회원기본 정보</h5>
		<form name="editForm" action="join_persist.do" method="post"
			onsubmit="return checkformField( this, null );">

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
										class="input_text" type="text" id="userid" name="id"
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