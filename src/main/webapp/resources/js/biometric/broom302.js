$(document).ready(function(){
	//설정 이미지에서 마우스가 떠나면 글 띄우기
	$("#setting").mouseover(function(){
		$("#setting_set").css("display", "block");
	})
	//설정 이미지에서 마우스가 떠나면 글 지우기
	$("#setting").mouseout(function(){
		$("#setting_set").css("display", "none");
	})
	
	//설정 키를 누르면 +, -의 이미지가 나옴
	// 다시 누르면 +, - 이미지가 들어감
	$("#setting").click(function(){
		$(".setting_icon").toggle();
		
	})
	//아이콘을 누르면 체크표시 이미지로 변경 되고
	//체크 된 아이콘의 이미지가 아이사진 옆에 뜨게함
	$("#icon_1").click(function(){
		$("#icon_1").attr("src", "../resources/image/biometric/check.png")
		$("#check_icon1").css("display", "block");
		$("#check_icon2").css("display", "none");
		$("#icon_2").attr("src", "../resources/image/biometric/plus.png")
			$('#check_icon1').click(function(){
				$("#room_302_1").css("display", "none");
			})
	})
	
	$("#icon_2").click(function(){
		$("#icon_2").attr("src", "../resources/image/biometric/check.png")
		$("#check_icon2").css("display", "block");
		$("#check_icon1").css("display", "none;");
		$("#icon_1").attr("src", "../resources/image/biometric/minus.png")
	})
	
	$("#icon_3").click(function(){
		$("#icon_3").attr("src", "../resources/image/biometric/check.png")
		$("#check_icon3").css("display", "block");
		$("#check_icon4").css("display", "none");
		$("#icon_4").attr("src", "../resources/image/biometric/plus.png")
		
	})
	
	$("#icon_4").click(function(){
		$("#icon_4").attr("src", "../resources/image/biometric/check.png")
		$("#check_icon4").css("display", "block");
		$("#check_icon3").css("display", "none;");
		$("#icon_3").attr("src", "../resources/image/biometric/minus.png")
		
	})
	
	$("#icon_5").click(function(){
		$("#icon_5").attr("src", "../resources/image/biometric/check.png")
		$("#check_icon5").css("display", "block");
		$("#check_icon6").css("display", "none");
		$("#icon_6").attr("src", "../resources/image/biometric/plus.png")
		
	})
	
	$("#icon_6").click(function(){
		$("#icon_6").attr("src", "../resources/image/biometric/check.png")
		$("#check_icon6").css("display", "block");
		$("#check_icon5").css("display", "none;");
		$("#icon_5").attr("src", "../resources/image/biometric/minus.png")
	})
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});