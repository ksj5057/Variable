/**
 * 메인 메뉴 애니메이션
 */

//문서가 로딩이 다 되면
/*$(function(){
	//menu_btn_mask옆에 버튼을 누르면
	$('.menu_btn_mask > .open_menu_btn').click(function(){
		//옆에 ul태그를 토글 !
		$(this).next(".snb").toggleClass("hide");
	});
});
*/
$(function(){
	//menu_btn_mask옆에 버튼을 누르면
	$('.menu_btn_mask > .open_menu_btn').click(function(){
		//옆에 ul태그를 토글 !
		$(this).next(".bh_snb_ul").toggle("ul");
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

