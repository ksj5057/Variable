$(document).ready(function() {
	
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
					}
		})

	}
	
	$('#in2').click(function(){
		var bname=$('#insert_baby_name2').val();
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
					}
		})

	}
	
	$('#in3').click(function(){
		var bname=$('#insert_baby_name3').val();
		console.log(bname);
		var bno=$('#insert_baby_bno3').val();
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
					}
		})

	}
});