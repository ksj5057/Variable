
/* 실시간 온도 체쿠 */

$(document).ready(function(){

	// create initial empty chart
	var ctx_live = document.getElementById("mycanvas");
	var myChart = new Chart(ctx_live, {
		        
	type: 'line',
	  data: {
	    labels: [],
	    datasets: [{
	      data: [],
	      borderWidth: 1,
	      borderColor:'#00c0ef',
	      label: 'liveCount',
	    }]
	  },
	  options: {
		  responsive: false,
	    title: {
	      display: true,
	      text: "실시간 온도",
	    },
	    legend: {
	      display: false
	    },
	    scales: {
	      yAxes: [{
	        ticks: {
	          beginAtZero: true,
	        }
	      }]
	    }
	  }
	});

	// logic to get new data
	var getData = function() {
	  $.ajax({
	    url: '/test.action',
	    dataType: 'json',
	    type: 'get',
	    async : false,
	    success: function(data) {
	      // process your data to pull out what you plan to use to update the chart
	      // e.g. new label and a new data point
	      
	      // add new label and data point to chart's underlying data structures
	      myChart.data.labels.push(data[0].today);
	      myChart.data.datasets[0].data.push(data[0].temp);
	      console.log(data[0].temp);
	      console.log(data[0].today);
	      
	      // re-render the chart
	      myChart.update();
	    }
	  });
	};

	// get new data every 3 seconds
	setInterval(getData, 62000);

});
