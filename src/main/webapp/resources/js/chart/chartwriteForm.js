

function Certificate(select){
	let hc = document.getElementById("hc");
	const cl = document.getElementById('va');
	const cl2 = document.getElementById('va2');
	const cl3 = document.getElementById('va3');
	const cl4 = document.getElementById('va1');
	const cl5 = document.getElementById('va4');


	if(select.value == 'Clinic'){
		cl.style.display = 'none';
		cl2.style.display = 'none';
		cl3.style.display = 'none';
		cl4.style.display = '';
		cl5.style.display = '';
		hc.value = '01';
	}else if(select.value == 'Discharge'){


		cl.style.display = '';
		cl2.style.display ='none';
		cl3.style.display ='none';
		hc.value = '02';
		console.log(hc);

	}else if(select.value == 'Operation'){
		const cl = document.getElementById('va');
		cl.style.display = '';
		cl2.style.display = '';
		cl3.style.display = '';
		cl4.style.display = 'none';
		cl5.style.display = 'none';

		hc.value = '03';

	}
};

$(document).ready(function() {
	$('#inid').blur(function(){
		var db=$("input[name='db']").val();
		addv({db:db});

	});

	function addv(date){
		console.log(date)

		var db = date.db;

		$.getJSON("/post/"+db+".json",
				function(data){
			console.log(data);
			$('#inrrn').attr('value', data.birth);
		})

	}
});

