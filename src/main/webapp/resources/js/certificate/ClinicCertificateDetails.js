
$(document).ready(function() {
	
	$('#db_move').click(function(){
		var name=$("input[name='mname']").val();
		//var pwd=$("input[name='pwd']").val();
		add({name:name});

	});

	function add(date){
		console.log(date)

		var name=date.name;

		$.getJSON("/post/"+name+".json",
				function(data){
			console.log(data);
			$('#inrrn').attr('value', data.birth);
		})

	}
});