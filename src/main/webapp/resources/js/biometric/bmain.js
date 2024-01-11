$(function(){


	//up 이미지
	$(".imageup").attr("src", "../../resources/image/biometric/up.png")

	//down 이미지
	$(".imagedown").attr("src", "../../resources/image/biometric/down.png")

	//이미지에 마우스를 올리면 글 띄우기
	$("#room_pop1").mouseover(function(){
		$("#poptext1").css("display", "block");
	})
	//이미지에 마우스를 올리면 글 띄우기
	$("#room_pop2").mouseover(function(){
		$("#poptext2").css("display", "block");
	})
	//이미지에 마우스를 올리면 글 띄우기
	$("#room_pop3").mouseover(function(){
		$("#poptext3").css("display", "block");
	})


	//이미지에서 마우스가 떠나면 글 지우기
	$("#room_pop1").mouseout(function(){
		$("#poptext1").css("display", "none");
	})
	//이미지에서 마우스가 떠나면 글 지우기
	$("#room_pop2").mouseout(function(){
		$("#poptext2").css("display", "none");
	})
	//이미지에서 마우스가 떠나면 글 지우기
	$("#room_pop3").mouseout(function(){
		$("#poptext3").css("display", "none");
	})


})

//아기 등록창 팝업
function openPopup(){ 

	var url = 'babyinsertform'; 

	    var option = 'width=600, height=520, top=50, left=550, scrollbars=no, resizeable=no'; 
	 
	    var name = 'myPopup'; 
	 
	    // option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
	    window.open(url, name, option); 


} 
//up 이미지를 클릭 시 plus 함수 호출
function plus(up){
	// 인수의 값이 1이라면
	if(up == 1){
		//bt301의 값을 up 지역변수에 저장하고
		let up = document.getElementById("bt301_tem").value;
		// 1증가
		up++
		//up의 값이 31이 되면 false를 반환하여 멈춤. 
		if(up == 31){
			return false;
		}else{
			//그 외에는 bt301 값을 올림.
			document.getElementById("bt301_tem").value = up;
		}
		
	}else if(up == 2){
		let up = document.getElementById("bt302_tem").value;
		up++
		if(up == 31){
			return false;
		}else{
			document.getElementById("bt302_tem").value = up;
		}
		
	}else if(up == 3){
		let up = document.getElementById("bt303_tem").value;
		up++
		if(up == 31){
			return false;
		}else{
			document.getElementById("bt303_tem").value = up;
		}

	}else if(up == 4){
		let up = document.getElementById("batches_tem").value;
		up++
		if(up == 31){
			return false;
		}else{
			document.getElementById("batches_tem").value = up;
		}
	}
}	
// down 이미지를 클릭 시 down함수를 호출
function minus(down){
	// 인수의 값이 1이라면
	if(down == 1){
		// bt301의 값을 down 지역변수에 저장
		let down = document.getElementById("bt301_tem").value;
		//1 감소
		down-- 
		//down의 값이 17가 같아지면 false를 반환하여 멈춤
		if(down == 17){
			return false;
		}else{
		//그 외에는 bt301의 값을 내림.
			document.getElementById("bt301_tem").value = down;
			}
		
	}else if(down == 2){
		let down = document.getElementById("bt302_tem").value;
		down--
		if(down == 17){
			return false;
		}else{
			document.getElementById("bt302_tem").value = down;
			}

	}else if(down == 3){
		let down = document.getElementById("bt303_tem").value;
		down--
		if(down == 17){
			return false;
		}else{
			document.getElementById("bt303_tem").value = down;
			}

	}else if(down == 4){
		let down = document.getElementById("batches_tem").value;
		down--
		if(down == 17){
			return false;
		}else{
			document.getElementById("batches_tem").value = down;
			}
	}

}

