$(document).ready(function(){
	
});

//온도 설정 버튼을 클릭 시 tem 함수를 호출
function tem(room){
	//인수 room에 값을 받아 비교.
	let tem; // 지역변수 tem을 선언
	let bt = room; //지역변수 bt = room으로 초기화 
	
	//room의 값을 비교하어 실행
	if(room == 1){
		//bt301의 설정값을 tem지역변수에 저장.
			tem = document.getElementById("bt301_tem").value;
		}else if(room == 2){
			tem = document.getElementById("bt302_tem").value;
		}else if(room == 3){
			tem = document.getElementById("bt303_tem").value;
		}else if(room == 4){
			tem = document.getElementById("batches_tem").value;
		}  
	
	//설정을 하고 에이젝스를 이용하여 db에 접근.
	$.getJSON("/get/room/tem/"+bt+"/"+tem+".json",
			function(data){
		
				if(data == "1" ){
					alert("변경 되었습니다.");
					location.href="bmain";
					}
	})
}

