/**
 * 메인 메뉴 애니메이션
 *
 * alert('zz');
 */

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


