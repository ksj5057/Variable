<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/MemberShip_L.css">	
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="/../../resources/js/member/MemberShip.js"></script>
<body>
<div id="container_wrapper">
	<div class="mt30">
		<h5 class="tit_h5">통합회원기본 정보</h5>
		<form name="form" action="Login_L" method="post" onsubmit="return check_all()" > 

<fieldset> 
				<table class="table_type2">
					<tbody>
						<tr>
							<th>이름 <strong class="cor_point">*<span class="skip">필수입력</span></strong></th>
							
								<td>
								<!-- 이름 입력-->
								<input class="input_text" type="text" name="name" id="name" > 
								<br><span id="check_name_L"></span></td>
								
							<th>주민등록번호 <strong class="cor_point">*<span class="skip">필수입력</span></strong>
							
							</th>
							<td>
							<!-- 주민등록번호 입력 -->
							<input class="input_text" maxlength="13" type="text" name="birth" id="birth" placeholder="주민등록번호 13자리" >
							<br><label id="check_birth_L"></label>
							<br>
							</td>
						</tr>

						<tr>
						
							<th>아이디 <strong class="cor_point">*<span class="skip">필수입력</span></strong></th>
							
							<td colspan="3">
								<p>
								<!--  아이디 입력 -->
									<input class="input_text" type="text" id="id" name="id" maxlength="20" >
								</p>
								<ul class="add_member_ul">
									<li class = "check_id_L">아이디는 5~20자의 영어소문자,숫자만 사용가능합니다.</li>
									<li class = "check_id_L">탈퇴 후 재가입 시 동일 아이디 사용이 불가 합니다.</li>
								</ul>
							</td>
						</tr>





						<tr>
							<th>비밀번호 <strong class="cor_point">*<span class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<div>
									<input class="input_text" type="password" id="pw" name="pw" maxlength="20" >
									</div>
								<ul class="add_member_ul">
									<li id="check_pw_L">
									<P>
										   비밀번호는 영어대소문자,숫자,특수문자만 사용 가능합니다. 
									<br> - 2종류 조합 시 10자리 이상 사용 가능 
									<br> - 3종류 조합 시 9자리 이상 사용 가능 
									<br> - 사용가능 특수문자: !@#$%^*
									</P> 

									</li>
								</ul>
							</td>
						</tr>

						<tr>
							<th>비밀번호 확인 <strong class="cor_point">*<span class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<input class="input_text" type="password" id="pwtopw" name="pwtopw" > 
									<br><span id="check_pwtopw"></span>
								</p>
							</td>
						</tr>


						<tr>
							<th>핸드폰 번호 <strong class="cor_point">*<span class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p>
									<select class="input_select1" title="핸드폰 번호 앞자리 선택" id="cellPhone" name="hp_no01">
										<option value="">선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select> 
									<span class="empty">- </span> <input class="input_text3" type="tel" maxlength="4" title="핸드폰 번호 중간자리" name="hp_no02"  id="number1">
									<span class="empty">- </span> <input class="input_text3" type="tel" maxlength="4" title="핸드폰 번호 끝자리" name="hp_no03"  id="number2">
									<br><span id="check_number_L"></span>
								</p>
							</td>
						</tr>

						<tr>
							<th>E-mail 주소 <strong class="cor_point">*<span class="skip">필수입력</span></strong></th>
							<td colspan="3">
								<p class="mb5">
									<input class="input_text2" type="text" title="이메일 아이디" id="email" name="mail" > 
										<br><span id="check_email_L"></span>
									
								</p>

							</td>
						</tr>
					</tbody>
				</table>

				<p class="btn_center">
					<input class="btn_ok" type="submit" value="회원가입">
					<a class="btn_cancel" href="#">회원가입취소</a>
				</p>
		</fieldset>
		</form>

	</div>

</div>

</body>
</html>
