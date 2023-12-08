<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/Login.css">	
</head>
<body>
<form action ="" method="post" >
<fieldset>
					<legend>회원 로그인</legend>
					<div class="bh_all_login_section bh_mgb30">
						<div class="bh_all_login_form">
							<div class="bh_all_login_box">
								<p class="bh_all_login_id">
									<label for="userid" class="skip">아이디</label>
									<input placeholder="아이디를 입력해 주세요." id="userid" name="userid" type="text" title="아이디" value="" class="bh_all_login_btn_id" style="ime-mode:disabled;">
								</p>
								<p class="bh_all_login_pw">
									<label id="password" class="skip">비밀번호</label>
									<input placeholder="비밀번호를 입력해 주세요." id="password" name="password" type="password" value="" title="비밀번호" class="bh_all_login_btn_pw">
								</p>
                
                          
								<input class="bh_btn_all_login" type="submit" value="로그인">


							</div>
                <div class="pw_check_txt_n1 mb10 mt5" id="upcheck" style="display: none;">
                  <strong class="cor_point" style="text-indent: 0px"><span id="pwChk">비밀번호에 대문자가 입력 되어 있습니다.</span></strong>
                </div>
				<div class="bh_all_login_sns">
				<a href="javascript:popupOpenNaver( 'https://nid.naver.com/oauth2.0/authorize?response_type=code&amp;client_id=I_PEGW34U17u5Jbp32qb&amp;redirect_uri=https%3A%2F%2Fwww.snubh.org%2Fmember%2FnaverLogin.do&amp;state=215152731289359034975535645765650173105&amp;auth_type=reauthenticate', '네이버로그인')" class="bh_all_login_naver" title="새창으로 열기">
									<!-- <img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/> -->
									<strong>네이버 <span>아이디로 </span>로그인</strong>
								</a>						
								
				<a href="javascript:appleLogin()" class="bh_all_login_apple" title="새창으로 열기" id="apple_lgn_button_1" style="display:none;">								 
                   <strong>Apple<span> </span>로그인</strong>
                </a>
				<a href="javascript:popupOpenApple('https://appleid.apple.com/auth/authorize?client_id=org.snubh.snubhSnsLogin&amp;redirect_uri=https://www.snubh.org&amp;response_type=code id_token&amp;state=215152731289359034975535645765650173105&amp;scope=name email&amp;response_mode=web_message','AppleLoginPop')" id="apple_lgn_button_2" class="bh_all_login_apple" title="새창으로 열기">								 								 
                   <strong>Apple<span> </span>로그인</strong>
                 </a>          
                
                
							</div>
						</div>
					</div>
				</fieldset>
				</form>
</body>
</html>