<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/biometric/babyinsertform.css" />

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class = "bbbox">
<div class="wrapper">
  <div class="container">
  		<input class="button" type="button" value="닫기" onclick="closePopup()">
    <h1>아이 정보 등록</h1>
    
    <form class = "form" action ="babyinsert" method ="get">
      <div class = "bname"><input class ="text" type="text" placeholder="아이이름" name = "bname"></div>
      <div class="upload">
			<div>아이 사진</div>
			<div>
				<!-- 메이븐으로 input type에 'file'을 추가 -->
				<input type="file" name="bimage">
			</div>
			
	  </div>
	  <div class = "bname"><input class ="text" type="text" placeholder="아이나이" name = "bage"></div>
   	  <div class = "dradio">
   	  	남<input class = "radio" type = "radio" name = "bgender" value = "남">
		여<input class = "radio" type = "radio" name = "bgender" value = "여">
	  </div>
      <input class ="text" type="text" placeholder="보호자 이름" name = "mname">
      <input class ="text"type="text" placeholder="보호자 휴대번호" name = "mnumber">
      <input class ="text"type="text" placeholder="보호자2 이름" name = "fname">
      <input class ="text"type="text" placeholder="보호자2 휴대번호" name = "fnumber">
      
      <button type="submit" id="login-button">등록 완료</button>
    </form>
  </div>
</div>
</div>
<script>

function closePopup(){ 
	//닫기 누르면 팝업 꺼짐
	window.close();
}
</script>
</body>
</html>