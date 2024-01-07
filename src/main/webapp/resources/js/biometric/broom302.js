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
			//히든인풋의 값이 0이라면 
			if($("#pointer").val() == 0){
				//아기 이미지의 a링크의 활성화를 막고
				$(".baby_image").css("pointer-events", " none");
				// 셋팅 아이콘을 나타냄.
				$(".setting_icon").css("display", "block");
				//히든인풋 값을 1으로 변경
				$("#pointer").val(1); 
				
				//
				//히든인풋의 값이 1이라면 
			}else if($("#pointer").val() == 1){
				//아기 이미지의 a링크의 활성화를 풀고
				$(".baby_image").css("pointer-events", " auto");
				// 셋팅 아이콘을 숨김
				$(".setting_icon").css("display", "none");
				//히든인풋 값을 0으로 변경
				$("#pointer").val(0);
			}
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
				$("#room_302_1").css("opacity", "0")
			})
	})
	
	$('#check_icon3').click(function(){
				// romm_302_2의 정보를 안보이게 함
				$("#room_302_2").css("opacity", "0")
			})
			
	$('#check_icon5').click(function(){
				// romm_302_3의 정보를 안보이게 함
				$("#room_302_3").css("opacity", "0")
			})
			
			
/* -------------------------------------아기 등록 테이블-----------------------------------------------------*/
			
	//플러스 이미지를 누르면 아기 등록 테이블 생성.
	$("#check_icon2").click(function(){
		$("#insert_baby_table1").css("display", "block");
	})
	//플러스 이미지를 누르면 아기 등록 테이블 생성.
	$("#check_icon4").click(function(){
		$("#insert_baby_table2").css("display", "block");
	})
	//플러스 이미지를 누르면 아기 등록 테이블 생성.
	$("#check_icon6").click(function(){
		$("#insert_baby_table3").css("display", "block");
	})
	
/* --------------------------------------------------------------------------------------------------------------*/
	
	
/* ---------------------------------이미지 아이콘 체크 시 중복 체크 막기-------------------------------*/
	
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
	
	
/* --------------------------------------------------------------------------------------------------------------*/	
	
});

//아기등록 테이블에  있는 리스트의  이름을 누르면 값을 받아와서 입력함.
function insert1(name , bno){
	//리스트 input 값 안에 name을 넣기
	 $("#insert_baby_name1").val(name);
	//리스트 input 값 안에 bno을 넣기
	 $("#insert_baby_bno1").val(bno);
	
	
}
//아기등록 테이블에  있는 리스트의  이름을 누르면 값을 받아와서 입력함.
function insert2(name , bno){
	//리스트 input 값 안에 name을 넣기
	 $("#insert_baby_name2").val(name);
	//리스트 input 값 안에 bno을 넣기
	 $("#insert_baby_bno2").val(bno);
	
	
}
//아기등록 테이블에  있는 리스트의  이름을 누르면 값을 받아와서 입력함.
function insert3(name , bno){
	//리스트 input 값 안에 name을 넣기
	 $("#insert_baby_name3").val(name);
	//리스트 input 값 안에 bno을 넣기
	 $("#insert_baby_bno3").val(bno);
	
	
}