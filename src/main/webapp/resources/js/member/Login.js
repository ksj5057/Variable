/**
 * 
 */

function login(signal){
	let admin_login = document.getElementById("admin_login");
	let nomal_login = document.getElementById("nomal_login");
	let background1 = document.getElementById("background1");
	let background2 = document.getElementById("background2");
	let login_if = document.getElementById("login_if");


	if(signal == 1){
		//녹색
		nomal_login.style="color:#99CC99";
		//회색
		admin_login.style="color:#667084";

	}else if(signal == 2){
		//녹색
		nomal_login.style="color:#667084";
		//회색
		admin_login.style="color:#99CC99";
		login_if.value ="2";
		console.log(login_if);


	}

}
//아이디 틀림 확인
$(document).ready(function() {
	let gid;
	let gpw;
	let lv;
	$('.bh_all_login_btn_pw').keydown(function(){
		if (event.key == 'Enter') {
		//중복 확인 버튼을 누르면 if문 안의 check_id 함수를 호출 양식에 안맞으면 false값을 양식에 맞으면 true를 반환
		var id=$("input[name='id']").val();
		var pw=$("input[name='pw']").val();
		var login=$("input[name='login_value']").val();
		Verification({id:id, pw:pw, login:login}); 
		 }
		 });
	function Verification(date){
		 gid = id=date.id;
		 gpw = pw=date.pw;
		 lv =  login_value = date.login;
	
		$.getJSON("/post/Verification/"+id+"/"+pw+"/"+login_value+".json", function(date){
			if(date == 0){
				$("#Verification").html("아이디 또는 비밀번호가 틀렸습니다.");
				$("#Verification").css("color", "red");
				$("#userid").focus()
				return false;
			}else{
				login();
			}
		})
	}
	
		function login(){
			location.href="login?id="+gid+"&pw="+gpw+"&login_value="+lv;
	}
		
		$('.bh_btn_all_login').click(function(){
			
			//중복 확인 버튼을 누르면 if문 안의 check_id 함수를 호출 양식에 안맞으면 false값을 양식에 맞으면 true를 반환
			var id=$("input[name='id']").val();
			var pw=$("input[name='pw']").val();
			var login=$("input[name='login_value']").val();
			Verification({id:id, pw:pw, login:login}); 
			 
			 });
		function Verification(date){
			 gid = id=date.id;
			 gpw = pw=date.pw;
			 lv =  login_value = date.login;
		
			$.getJSON("/post/Verification/"+id+"/"+pw+"/"+login_value+".json", function(date){
				if(date == 0){
					$("#Verification").html("아이디 또는 비밀번호가 틀렸습니다.");
					$("#Verification").css("color", "red");
					$("#userid").focus()
					return false;
				}else{
					login();
				}
			})
		}
		
			function login(){
				location.href="login?id="+gid+"&pw="+gpw+"&login_value="+lv;
		}
		
		
		
		
		
		
		
		
	});
	
