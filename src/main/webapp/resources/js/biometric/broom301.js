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
				//아기 이미지의 a링크의 활성화를 중지시키고
				$(".baby_image").css("pointer-events", " none");
				// 셋팅 아이콘을 나타냄.
				$(".setting_icon").css("display", "inline-block");
//				$("#icon_2").css('opacity', '0')
//				$("#icon_4").css('opacity', '0')
//				$("#icon_6").css('opacity', '0')

				//히든인풋 값을 1으로 변경
				$("#pointer").val(1); 
				
				//
				//히든인풋의 값이 1이라면 
			}else if($("#pointer").val() == 1){
				//아기 이미지의 a링크의 활성화를 실행시키고
				$(".baby_image").css("pointer-events", " auto");
				// 셋팅 아이콘을 숨김
				$(".setting_icon").css("display", "none");
				//히든인풋 값을 0으로 변경
				$("#pointer").val(0);
			}
	})
	$("#icon_1").click(function(){
					//div에 저장된 아기 이름 값 저장.
					let bn = document.getElementById("check_baby_id0").innerText;
					// 삭제 문구 띄우기
					var result = confirm("정말로 삭제 하시겠습니까?");
					//혹시 모를 상황에 대비해 아기 이름을 한번 더 입력하기
					let re = prompt("아기 이름을 한번 더 입력해주세요")
					//비교하기
					if(re == bn){
					result == true // 아기이름 작성까지 다 맞으면 삭제
						// romm_302_1의 정보를 안보이게 함
						$("#baby_0").css('opacity', '0')
						$("#icon_1").css('opacity', '0')
						$("#icon_1").css("pointer-events", " none");
						$("#tem_ment").css('opacity', '0')
						let bno =$("#baby_bno0").val();
						//삭제 함수 호출;
						del(bno);
					}
					else { // 아니면 취소 
						alert("입력에 실패하였습니다.");
					}
				
					
					
					
})
	
	$('#icon_3').click(function(){
		//div에 저장된 아기 이름 값 저장.
		let bn = document.getElementById("check_baby_id1").innerText;
		// 삭제 문구 띄우기
		var result = confirm("정말로 삭제 하시겠습니까?");
		//혹시 모를 상황에 대비해 아기 이름을 한번 더 입력하기
		let re = prompt("아기 이름을 한번 더 입력해주세요")
		//비교하기
		if(re == bn){
		result == true // 아기이름 작성까지 다 맞으면 삭제
			// romm_302_1의 정보를 안보이게 함
			$("#baby_1").css('opacity', '0')
			$("#icon_3").css('opacity', '0')
			$("#icon_3").css("pointer-events", " none");
			$("#icon_4").css('opacity', '1')
			let bno =$("#baby_bno1").val();
			//삭제 함수 호출;
			del(bno);
		}
		else { // 아니면 취소 
			alert("입력에 실패하였습니다.");
		}
	
		
		
		
})
			
	$('#icon_5').click(function(){
		//div에 저장된 아기 이름 값 저장.
		let bn = document.getElementById("check_baby_id2").innerText;
		// 삭제 문구 띄우기
		var result = confirm("정말로 삭제 하시겠습니까?");
		//혹시 모를 상황에 대비해 아기 이름을 한번 더 입력하기
		let re = prompt("아기 이름을 한번 더 입력해주세요")
		//비교하기
		if(re == bn){
		result == true // 아기이름 작성까지 다 맞으면 삭제
			// romm_302_1의 정보를 안보이게 함
			$("#baby_2").css('opacity', '0')
			$("#icon_5").css('opacity', '0')
			$("#icon_5").css("pointer-events", " none");
			$("#icon_6").css('opacity', '1')
			let bno =$("#baby_bno2").val();
			//삭제 함수 호출;
			del(bno);
		}
		else { // 아니면 취소 
			alert("입력에 실패하였습니다.");
		}
	
		
		
		
})
			
			
/* -------------------------------------아기 등록 테이블-----------------------------------------------------*/
			
	//플러스 이미지를 누르면 아기 등록 테이블 생성.
	$("#icon_2").click(function(){
		$("#insert_baby_table0").css("display", "block");
	})
	//플러스 이미지를 누르면 아기 등록 테이블 생성.
	$("#icon_4").click(function(){
		$("#insert_baby_table1").css("display", "block");
	})
	//플러스 이미지를 누르면 아기 등록 테이블 생성.
	$("#icon_6").click(function(){
		$("#insert_baby_table2").css("display", "block");
	})
	

// 퇴원 에이젝스
		function del(bno){

			var bbno = bno;

			$.getJSON("/post/baby/del1/db/"+bbno+".json", function(data){
							console.log(data);
				
						if(data == '1' ){
							alert("삭제 되었습니다.")
							location.href="r301"
							}
						else{
							alert("등록되어있지 않은 정보입니다.")
						}
			})

		}
	
	

});
	
//아기등록 테이블에  있는 리스트의  이름을 누르면 값을 받아와서 입력함.
function insert0(name , bno){
	console.log(name, bno);
	//리스트 input 값 안에 name을 넣기
	 $("#insert_baby_name0").val(name);
	//리스트 input 값 안에 bno을 넣기
	 $("#insert_baby_bno0").val(bno);
	
	
}
//아기등록 테이블에  있는 리스트의  이름을 누르면 값을 받아와서 입력함.
function insert1(name , bno){
	console.log(name , bno);
	//리스트 input 값 안에 name을 넣기
	 $("#insert_baby_name1").val(name);
	//리스트 input 값 안에 bno을 넣기
	 $("#insert_baby_bno1").val(bno);
	
	
}
//아기등록 테이블에  있는 리스트의  이름을 누르면 값을 받아와서 입력함.
function insert2(name , bno){
	console.log(name , bno);
	//리스트 input 값 안에 name을 넣기
	 $("#insert_baby_name2").val(name);
	//리스트 input 값 안에 bno을 넣기
	 $("#insert_baby_bno2").val(bno);
	
}
