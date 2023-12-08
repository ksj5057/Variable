/**
회원가입 제한식 */

let repwtopw;

//정규식
let reid = /^[a-z]+[a-z0-9]{5,19}$/g;
let repw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
let remail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
let rebirth = /^[0-9]+$/;
let rename =  /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
let renummber = /^[0-9]+$/;

function check_all(){
	if(check_name() && check_birth() && check_id() && check_pw() && check_pwtopw() && check_email() && check_number()){
		return true;
	}else{
		return false;
	}
	
}
	

// 아이디 체크 
function check_id(){
	
	let id = document.getElementById("id").value;
	let check_id_L = document.getElementsByClassName("check_id_L");
			
	if(reid.test(id)){
		check_id_L[0].style="color:green;"
		check_id_L[1].style="color:green;"	
			return true;
	}else{
		check_id_L[0].style="color:red";
		check_id_L[1].style="color:red";
		return false;
	}
}
// 비밀번호 체크 
function check_pw(){
	
	let pw = document.getElementById("pw").value;
	let check_pw_L = document.getElementById("check_pw_L");
	
	if(repw.test(pw)){
		check_pw_L.style="color:green";
		repwtopw = pw;
		return true;
	}else{
		check_pw_L.style="color:red";
		return false;
	}
}
//비밀번호 중복 확인
	function check_pwtopw(){
		
		let pwtopw = document.getElementById("pwtopw").value;
		let check_pwtopw_L = document.getElementById("check_pwtopw");
		
		if(repwtopw == pwtopw){
			check_pwtopw_L.innerHTML = "사용 가능한 비밀번호 입니다."
			check_pwtopw_L.style="color:green";
			return true;
		}else{
			check_pwtopw_L.innerHTML = "비밀번호가 일치하지 않습니다."
			check_pwtopw_L.style="color:red";
			return false;
		}
		
}
//이메일 체크
	
	function check_email(){
		
		let email = document.getElementById("email").value;
		let check_email_L = document.getElementById("check_email_L");
		
		if(remail.test(email)){
			check_email_L.innerHTML = "사용 가능한 e-mail주소 입니다."
			check_email_L.style="color:green";
			return true;
		}else{
			check_email_L.innerHTML = "다시 입력 부탁드립니다."
			check_email_L.style="color:red";
			return false;
		}
		
}

//주민등록번호 체크
	function check_birth(){
		let birth = document.getElementById("birth").value;
		let check_birth_L = document.getElementById("check_birth_L");
		if(rebirth.test(birth)){
			check_birth_L.innerHTML = "감사합니다."
			check_birth_L.style="color:green";
			return true;
		}else{
			check_birth_L.innerHTML = "양식에 맞춰 다시 입력 부탁드립니다."
			check_birth_L.style="color:red";
			return false;
		}
		
}

//이름 체크
	function check_name(){
		
		
		let name = document.getElementById("name").value;
		let check_name_L = document.getElementById("check_name_L");
		
		if(rename.test(name)){
			check_name_L.innerHTML = "감사합니다."
			check_name_L.style="color:green";
			return true;
		}else{
			check_name_L.innerHTML = "양식에 맞춰 다시 입력 부탁드립니다."
			check_name_L.style="color:red";
			return false;
		}
		
}
//휴대폰번호 체크
	function check_number(){
		
		let number1 = document.getElementById("number1").value;
		let number2 = document.getElementById("number2").value;
		let check_number_L = document.getElementById("check_number_L");
		
			if(renummber.test(number1) && renummber.test(number2)){
			check_number_L.innerHTML = "감사합니다."
			check_number_L.style="color:green";
			return true;
		}else{
			check_number_L.innerHTML = "다시 입력 부탁드립니다."
			check_number_L.style="color:red";
			return false;
		}
	}
	 

	