/**
회원가입 제한식 */

let repwtopw;

//정규식
let reid = /^[a-z]+[a-z0-9]{5,19}$/g;
let repw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
let remail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
let rename =  /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
let renummber = /^[0-9]+$/;



$(document).ready(function() {

	//주민등록번호 인풋 칸 움직이기
	$("#birth1").keyup(function () {
		if (this.value.length == this.maxLength) {
			$('#empty1').next(".input_text3").focus();  
		}
	});

	//휴대폰번호 첫 번째 인풋 칸 움직이기
	$("#cellPhone").keyup(function () {    
		if (this.value.length == this.maxLength) {
			$('#next1').next(".input_text3").focus();
		}

	});
	//휴대폰번호 두 번째 인풋 칸 움직이기
	$("#number1").keyup(function () {    
		if (this.value.length == this.maxLength) {
			$('#next2').next(".input_text3").focus();
		}

	});

});

function check_all(){
	console.log(check_name());
	console.log(check_birth());
	console.log(check_pw());
	console.log(check_pwtopw());
	console.log(check_email());
	console.log(check_number());
	if(check_name() && check_birth()&& check_pw() && check_pwtopw() && check_email() && check_number()){

		return true;
	}else{
		return false;
	}

}


//아이디 체크 
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
//비밀번호 체크 
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


//주민등록번호 뒷자리 체크
function check_birth(){
	//성별
	let gender = document.getElementById("gender");
	let age = document.getElementById("age");

	let birth1 = document.getElementById("birth1").value;
	let birth = document.getElementById("birth2").value;
	let check_birth_L = document.getElementById("check_birth_L");

	if(birth == 1){//남자
		check_birth_L.innerHTML = "감사합니다"
			check_birth_L.style="color:green";
		gender.value = "M";
			if(birth1[0] == 0)
				{
					age.value= "20"+birth1;
					return true;
				}
			
			else if(birth1[0] == 1)
		  	{
				age.value= "20"+birth1;
				return true;
			}
			else if(birth1[0] == 2)
		  	{
				age.value= "20"+birth1;
				return true;
			}else
			  {
				age.value= "19"+birth1;
				return true;
				}

	}else if(birth == 3){		
		check_birth_L.innerHTML = "감사합니다"
			check_birth_L.style="color:green";
		gender.value = "M";
		if(birth1[0] == 9)
		{
			age.value= "19"+birth1;
			return true;
		}else if(birth1[0] == 8)
		{
			age.value= "19"+birth1;
			return true;
		}
		else if(birth1[0] == 7)
		{
			age.value= "19"+birth1;
			return true;
		}
		else
		{	
			age.value= "20"+birth1;
			return true;
		}

	}else if(birth == 2){	//여자
		check_birth_L.innerHTML = "감사합니다"
			check_birth_L.style="color:green";
		gender.value = "F";
		if(birth1[0] == 0)
		{
			age.value= "20"+birth1;
			return true;
		}
	
	else if(birth1[0] == 1)
  	{
		age.value= "20"+birth1;
		return true;
	}
	else if(birth1[0] == 2)
  	{
		age.value= "20"+birth1;
		return true;
	}else
	  {
		age.value= "19"+birth1;
		return true;
		}


	}else if(birth == 4)	{
		check_birth_L.innerHTML = "감사합니다"
			check_birth_L.style="color:green";
		gender.value = "F";
		if(birth1[0] == 9)
		{
			age.value= "19"+birth1;
			return true;
		}else if(birth1[0] == 8)
		{
			age.value= "19"+birth1;
			return true;
		}
		else if(birth1[0] == 7)
		{
			age.value= "19"+birth1;
			return true;
		}
		else
		{	
			age.value= "20"+birth1;
			return true;
		}

	}else if(birth == 6 || birth == 8){//외국인 여자
		check_birth_L.innerHTML = "Thank you"
			check_birth_L.style="color:green";
		gender.value = "F";
		age.value= "20"+birth1;
		return true;

	}else if(birth == 5 || birth == 7){//외국인 남자
		check_birth_L.innerHTML = "Thank you"
			check_birth_L.style="color:green";
		gender.value = "M";
		return true;
	}

	//이상하게 작성함
	else{
		check_birth_L.innerHTML = "다시 한번 확인해주세요"
			check_birth_L.style="color:red";
		return false;
	}}







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

// 아이디 중복 확인
$(document).ready(function() {
	$('#overlab').click(function(){
		//중복 확인 버튼을 누르면 if문 안의 check_id 함수를 호출 양식에 안맞으면 false값을 양식에 맞으면 true를 반환
		if(check_id()){
					var id=$("input[name='id']").val();
						overlap({id:id});
		}
	});
// true가 반환 된다면 db에 접근해서 중복이 있는지 확인.
	function overlap(date){
		var id=date.id;
		$.getJSON("/get/overlap/"+id+".json", function(date){
				if(date == 1)
			{
				$("#firtext").html("중복입니다");
				$("#setext").html("다시 입력해주세요");
				$(".check_id_L").css("color", "red");
				
			}else if(date == 0){
				$("#firtext").html("회원가입");
				$("#setext").html("감사합니다.");
				$(".check_id_L").css("color", "green");
			}
		})

	}
});

