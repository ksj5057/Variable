$(document).ready(function(){
	$('#db_num').keydown(function(){
		if (event.key === 'Enter') 
		{
			let db = $('#db_num').val();
			console.log(db);
			dbn({db:db});
		}
		
		function dbn(date){
			console.log(date);
			
			let db =date.db; 
			
			$.getJSON("/post/"+db+".json",
					function(date){
				console.log(date);
				
			})
		}
	
	
	
	
	
	
	})
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
})