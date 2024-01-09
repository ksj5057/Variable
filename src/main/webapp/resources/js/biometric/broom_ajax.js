$(document).ready(function() {
	
	// 입원 에이젝스
	$('#in0').click(function(){
		var bname=$('#insert_baby_name0').val();
		var bno=$('#insert_baby_bno0').val();
		add({bname:bname, bno:bno});

	});

	function add(date){
		console.log(date)

		var bname=date.bname;
		var bno=date.bno;

		$.getJSON("/get/baby/cat/"+bname+"/"+bno+".json",
				function(data){
			console.log(data);
			
					if(data == "0" ){
						alert("등록에 실패했습니다.")
						}
					else{
						alert("등록 되었습니다.")
						location.href="r302"
					}
		})

	}
	
	$('#in1').click(function(){
		var bname=$('#insert_baby_name1').val();
		var bno=$('#insert_baby_bno1').val();
		add({bname:bname, bno:bno});

	});

	function add(date){
		console.log(date)

		var bname=date.bname;
		var bno=date.bno;

		$.getJSON("/get/baby/cat/"+bname+"/"+bno+".json",
				function(data){
			console.log(data);
			
					if(data == "0" ){
						alert("등록에 실패했습니다.")
						}
					else{
						alert("등록 되었습니다.")
						location.href="r302"
					}
		})

	}
	
	$('#in2').click(function(){
		var bname=$('#insert_baby_name2').val();
		console.log(bname);
		var bno=$('#insert_baby_bno2').val();
		add({bname:bname, bno:bno});

	});

	function add(date){
		console.log(date)

		var bname=date.bname;
		var bno=date.bno;

		$.getJSON("/get/baby/cat/"+bname+"/"+bno+".json",
				function(data){
			console.log(data);
			
					if(data == "0" ){
						alert("등록에 실패했습니다.")
						}
					else{
						alert("등록 되었습니다.")
						location.href="r302"
					}
		})

	}
	
});