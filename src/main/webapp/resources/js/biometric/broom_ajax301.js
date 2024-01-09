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
});