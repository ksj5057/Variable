let count = 0;
$(document).ready(function test(){
	
	let a = 0;
	
	$.getJSON("/post/chart/time.json", function(data){
		
		console.log(data);
		
		for(i = 0; i < data.length; i++){
			
			a++
			
			    if(a == data.length){
				setInterval(test, 30000);
			}
			
		}
	})
	count++
	$("#count").html(count);
})
