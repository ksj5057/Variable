$(document).ready(function(){
	
});

function tem(room){
	console.log(room);
	let tem;
	let bt = room;
		if(room == 1){
			tem = document.getElementById("bt301_tem").value;
			console.log(tem)
		}else if(room == 2){
			tem = document.getElementById("bt302_tem").value;
			console.log(tem)
		}else if(room == 3){
			tem = document.getElementById("bt303_tem").value;
			console.log(tem)
		}else if(room == 4){
			tem = document.getElementById("batches_tem").value;
			console.log(tem)
		}  
	
	
	$.getJSON("/get/room/tem/"+bt+"/"+tem+".json",
			function(data){
		
				if(data == "1" ){
					alert("변경 되었습니다.");
					}
	})
}

