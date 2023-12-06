/**
회원가입 제한식 */

let eqpw;

//정규식
let chekid = /^[a-z]+[a-z0-9]{5,19}$/g;
let chekpw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
let chekemail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
let chekbirth = /^\d{13}$/g;
let chekname =  /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;

//
function checkre(){
	chid()
	console.log(chid);
	if(chid() && chpw() && chpwtopw() && chekem() && chbirth() && chname() )
				return true;
}else{
	return false;
}




// 아이디 체크 
function chid(){
	
	let userid = document.getElementById("userid").value;
	let noid = document.getElementsByClassName("L_l");
			
	if(chekid.test(userid)){
		noid[0].style="color:green;"
		noid[1].style="color:green;"	
			return true;
	}else{
		noid[0].style="color:red";
		noid[1].style="color:red";
		return false;
	}
}
// 비밀번호 체크 
function chpw(){
	
	let userpw = document.getElementById("password").value;
	let nopw = document.getElementById("pwChk");
	
	if(chekpw.test(userpw)){
		nopw.style="color:green";
		eqpw = userpw;
		return true;
	}else{
		nopw.style="color:red";
		return false;
	}
}
//비밀번호 중복 확인
	function chpwtopw(){
		
		let userpwtopw = document.getElementById("password2").value;
		let nopwtopw = document.getElementById("rePwChk");
		
		if(eqpw == userpwtopw){
			nopwtopw.innerHTML = "사용 가능한 비밀번호 입니다."
			nopwtopw.style="color:green";
			return true;
		}else{
			nopwtopw.innerHTML = "비밀번호가 일치하지 않습니다."
			nopwtopw.style="color:red";
			return false;
		}
		
}
//이메일 체크
	
	function chekem(){
		
		let email = document.getElementById("email").value;
		let noem = document.getElementById("checkEmail");
		
		if(chekemail.test(email)){
			noem.innerHTML = "사용 가능한 e-mail주소 입니다."
			noem.style="color:green";
			return true;
		}else{
			noem.innerHTML = "다시 입력 부탁드립니다."
			noem.style="color:red";
			return false;
		}
		
}

//주민등록번호 체크
	function chbirth(){
		
		let birth = document.getElementById("birth").value;
		let nobi = document.getElementById("nobirth");
		if(chekbirth.test(birth)){
			nobi.innerHTML = "감사합니다."
			nobi.style="color:green";
			return true;
		}else{
			nobi.innerHTML = "양식에 맞춰 다시 입력 부탁드립니다."
			nobi.style="color:red";
			return false;
		}
		
}

//이름 체크
	function chname(){
		
		let username = document.getElementById("name").value;
		let noid = document.getElementById("checkName");
		if(chekname.test(username)){
			noid.innerHTML = "감사합니다."
			noid.style="color:green";
			return true;
		}else{
			noid.innerHTML = "양식에 맞춰 다시 입력 부탁드립니다."
			noid.style="color:red";
			return false;
		}
		
}
	
	 

	
	