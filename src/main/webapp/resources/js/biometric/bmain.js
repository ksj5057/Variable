var url = 'babyinsertform'; 
$(document).ready(function(){

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

	    var option = 'scrollbars=no, left=400, top=200, width=440, height=550'; 
	 
	    var name = 'myPopup'; 
	 
	    // option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
	    window.open(url, name, option); 
} 