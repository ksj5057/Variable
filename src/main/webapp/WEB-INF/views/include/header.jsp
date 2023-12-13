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
				
				<!-- 로그인하면 안보이게 -->
				<c:if test="${login.id == null}">
					<li><a href="Login_L">로그인</a></li>
					<li><a href="MemberShip_L">회원가입</a></li>
				</c:if>						
				
				<!-- 로그인하면 보이게  -->
				<c:if test="${login.id ne null}">	
					<li><a href="#">${sessionScope.login.mname}님 환영합니다.</a><li>
				
				<!-- 관리자 아이디로 로그인했을때만 보이게 -->
				<c:if test="${login.id.equals('admin1')}">
					<li><a href="chart/chartlist">차트관리</a></li>
				</c:if>
					<li><a href="logout">로그아웃</a></li>
				</c:if>
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
		</div>
	</div>
</body>
</html>