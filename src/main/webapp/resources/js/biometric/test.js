let today = Array(24); //날짜
let temp = Array(24);    //온도
let i=0;				
$(document).ready(function test(){
		
	$.getJSON("/post/chart/time.json", function (data){
		
		
		today[i] = data[0].today;
		console.log(today)
		temp[i] = data[0].temp;
		console.log(temp)
		i++;

			//chart(data);
	})

		
	new Chart(document.getElementById("line-chart"), {
		  type: 'line',
		  data: {
		    // X축
			labels: [today[0]],
		    datasets: [{
		    	// DB데이터 y 축 그래프 기준 온도
		        data: [24, 25, 26, 27, 28, 29, 30, 31,32,33,34,35,36,37,38,39,40],
		        fill: false
		      }, 
		      { 
		          data: [" ", temp[0]],
		          label: "김륵싼",
		          borderColor: "#8e5ea2",
		          fill: false
		        }
		    ]
		  },
		  options: {
		    title: {
		      display: true,
		      text: '실시간 온도 그래프'
		    }
		  }
		});

	setInterval(test, 20000);

})


