/*
 * 실시간 온도 체쿠
 */

/*$(function(){

	var intervalId = setInterval(function() {
		  console.log("Hello, World!");
		}, 1000);
	
	setTimeout(function() {clearInterval(intervalId)}, 5000);
});*/

/*var intervalId = setInterval(function(){ 
		$.getJSON("/test.action", function(date){}
	}, 1000);
		
		setTimeout(function() {
			  clearInterval(intervalId);
			  console.log("반복 끝");
			}, 5000);
*/

$(function(){		
	
	var intervalId = setInterval(function(){ 
	$.getJSON("/test.action", function(data){
		console.log(data[0].temp);
		console.log(data[0].today);
	}, 10000);
	
	setTimeout(function() {
		  clearInterval(intervalId);
		  console.log("반복 끝");
		}, 5000);
	});
	
/*	new Chart(document.getElementById("line-chart"), {
		  type: 'line',
		  data: {
		    // X축
			labels: ["온도", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00"],
		    datasets: [{
		    	// DB데이터
		        data: [data[0].temp],
		        label: "응애1",
		        borderColor: "#3e95cd",
		        fill: false
		      }, 
		    ]
		  },
		  options: {
		    title: {
		      display: true,
		      text: '실시간 온도 그래프'
		    }
		  }
		});*/
	});
});
