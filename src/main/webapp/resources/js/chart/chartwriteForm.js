

function Certificate(){
	let hc = document.getElementById("hc").value;
	var city  = document.getElementById("Certificate");
	var value = (city.options[city.selectedIndex].value);
	if(value == 'Clinic'){
		//숨기기
		const cl = document.getElementById('va');
		cl.style.display = 'none';
		hc = '(01) 진료확인서';
	}else if(value == 'Discharge'){
		//보이기
		const cl = document.getElementById('va');
		cl.style.display = '';
		hc = '(02) 입퇴원확인서';
	}else if(value == 'Operation'){
		const cl = document.getElementById('va');
		cl.style.display = '';
		hc = '(03) 수술확인서';
		
	}
};
