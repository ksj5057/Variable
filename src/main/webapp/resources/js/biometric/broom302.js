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
	$("#icon_1").click(function(){
		//마이너스 이미지를 누르면 체크 이미지로 변경
		$("#icon_1").attr("src", "../resources/image/biometric/check.png")
		//확인 절차로 다시 마이너스 이미지를 아이 사진 옆에 출력
		$("#check_icon1").css("display", "block");
		// 플러스 이미지는 안보이게 하기
		$("#check_icon2").css("display", "none");
		//플러스 이미지를 누르면 체크 이미지로 변경
		$("#icon_2").attr("src", "../resources/image/biometric/plus.png")
			
			//확인 절차 마이너스 이미지를 클릭 시 
			$('#check_icon1').click(function(){
				// romm_302_1의 정보를 안보이게 함
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