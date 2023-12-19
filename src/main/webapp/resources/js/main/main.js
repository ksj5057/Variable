/**
 * 메인 메뉴 애니메이션
 *
 * alert('zz');
 */

// 로그인했을때
$(function(){
	// 증명서에 마우스 올리면
	$(".sbs_ul2").mouseover(function(){
		// 확인서목록 슬라이드
		$(".sbs__ul3").stop().slideDown(200);
	});
	// 마우스떼면 확인서목록 닫힘슬라이드
	$(".sbs_ul2").mouseleave(function(){
		$(".sbs__ul3").stop().slideUp(200);
	});
});

// 상단메뉴 눌렀을때
$(function(){
	//menu_btn_mask옆에 버튼을 누르면
	$('.menu_btn_mask > .open_menu_btn').click(function(){
		//옆에 ul태그를 토글 !
		$(this).next(".bh_snb_ul").toggle("slow");
	});
});


// 메인메뉴에 마우스 올렸을때
function zoomIn(event) {
	event.target.style.transform = "scale(1.2)";
	event.target.style.transition = "all 0.5s";
	event.target.style.zIndex = 100;
};

// 메인메뉴에 마우스 내렸을때
function zoomOut(event) {
	event.target.style.transform = "scale(1)";
	event.target.style.transition = "all 0.5s";
	event.target.style.zIndex = 0;
};

