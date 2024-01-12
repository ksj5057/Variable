$(document).ready(function() {
	
	//302호 입원 
	// 입원 에이젝스
	$('#in0').click(function(){
		var bname=$('#insert_baby_name0').val();
		var bno=$('#insert_baby_bno0').val();
		var bt=$('#bt').val();
		add({bname:bname, bno:bno, bt:bt});


	function add(date1){
		console.log(date1);
		var bname=date1.bname;
		var bno=date1.bno;
		var bt=date1.bt;

		$.getJSON("/get/baby/cat/"+bname+"/"+bno+"/"+bt+".json",
				function(data){
			console.log(data);
			
					if(data == "0" ){
						alert("등록에 실패했습니다.");
						}
					else{
						alert("등록 되었습니다.");
						location.href="r301";
					}
		})

	}
	})
	
	$('#in1').click(function(){
		var bname=$('#insert_baby_name1').val();
		var bno=$('#insert_baby_bno1').val();
		var bt=$('#bt').val();
		add({bname:bname, bno:bno, bt:bt});



	function add(date2){
		console.log(date2);

		var bname=date2.bname;
		var bno=date2.bno;
		var bt=date2.bt;		

		$.getJSON("/get/baby/cat/"+bname+"/"+bno+"/"+bt+".json",
				function(data){
			console.log(data);
			
					if(data == "0" ){
						alert("등록에 실패했습니다.")
						}
					else{
						alert("등록 되었습니다.")
						location.href="r301"
					}
		})

	}
	})
	
	$('#in2').click(function(){
		var bname=$('#insert_baby_name2').val();
		var bno=$('#insert_baby_bno2').val();
		var bt=$('#bt').val();
		add({bname:bname, bno:bno, bt:bt});



	function add(date3){
		console.log(date3);
		
		var bname=date3.bname;
		var bno=date3.bno;
		var bt=date3.bt;

		$.getJSON("/get/baby/cat/"+bname+"/"+bno+"/"+bt+".json",
				function(data){
			console.log(data);
			
					if(data == "0" ){
						alert("등록에 실패했습니다.");
						}
					else{
						alert("등록 되었습니다.");
						location.href="r301"
					}
		})

	}
	});
	var getData = function() {
		  $.ajax({
		    url: '/test/action/bt301',
		    dataType: 'json',
		    type: 'get',
		    async : false,
		    success: function(data) {
		    	console.log(data);
		    	//현재 체온 39.1
		    	$("#bt0").html(data);
		    	$("#bt1").html(data);
		    	$("#bt2").html(data);
		    	//미열
		    	if(data  > 37.5){
		    		$("#bh0").html("미열");
		    		$("#bh0").css("color", "red");
		    		$("#bh1").html("미열");
		    		$("#bh1").css("color", "red");
		    		$("#bh2").html("미열");
		    		$("#bh2").css("color", "red");
		    	}
		    	//발열
		    	else if(data > 38){
		    		$("#bh0").html("발열");
		    		$("#bh0").css("color", "red");
		    		$("#bh1").html("발열");
		    		$("#bh1").css("color", "red");
		    		$("#bh2").html("발열");
		    		$("#bh2").css("color", "red");
		    	}
		    	//고열
		    	else if(data > 39 ){
		    		$("#bh0").html("고열");
		    		$("#bh0").css("color", "red");
		    		
		    		$("#bh1").html("고열");
		    		$("#bh1").css("color", "red");
		    		
		    		$("#bh2").html("고열");
		    		$("#bh2").css("color", "red");
		    		
		    	}
		    	//저체온증
		    	else if(data < 28){
		    		$("#bh0").html("저체온 중도");
		    		$("#bh0").css("color", "blue");
		    		$("#bh1").html("저체온 중도");
		    		$("#bh1").css("color", "blue");
		    		$("#bh2").html("저체온 중도");
		    		$("#bh2").css("color", "blue");
		    	}else if(data < 32.1){
		    		$("#bh0").html("저체온 중증도");
		    		$("#bh0").css("color", "blue");
		    		$("#bh1").html("저체온 중증도");
		    		$("#bh1").css("color", "blue");
		    		$("#bh2").html("저체온 중증도");
		    		$("#bh2").css("color", "blue");
		    	}else if(data < 35){
		    		$("#bh0").html("저체온 경도");
		    		$("#bh0").css("color", "blue");
		    		$("#bh1").html("저체온 경도");
		    		$("#bh1").css("color", "blue");
		    		$("#bh2").html("저체온 경도");
		    		$("#bh2").css("color", "blue");
		    	}else if(data < 36){
		    		$("#bh0").html("저체온 주의");
		    		$("#bh0").css("color", "blue");
		    		$("#bh1").html("저체온 주의");
		    		$("#bh1").css("color", "blue");
		    		$("#bh2").html("저체온 주의");
		    		$("#bh2").css("color", "blue");
		    	}
		    	
		    	//기계이상
		    	else if(data > 42){
		    		$("#bh0").html("기계의 위치를 확인해주세요");
		    		$("#bh0").css("color", "red");
		    	}else if(data < 19){
		    		$("#bh0").html("기계의 위치를 확인해주세요");
		    		$("#bh0").css("color", "blue");
		    	}
		    	
		    }
		  });
		};

		setInterval(getData, 5000);
	
});