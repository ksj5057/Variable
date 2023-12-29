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
	let f = document.createElement('form');
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
				// date 값이 0 초과면 함수 login()을 호출
				login();
			}
		})
	}
	// 호출되서 실행 되면
	function login(){

		//인풋태그를 만들어서 obj1~3에 저장
		  let obj1 = document.createElement('input');
		  let obj2 = document.createElement('input');
		  let obj3 = document.createElement('input');

		//obj1의 input 타입을 히든으로 만들고 name값과 value값을 저장
		//1 <input type="hidden" name="id" value="gid">
		    obj1.setAttribute('type', 'hidden');
		    obj1.setAttribute('name', 'id');
		    obj1.setAttribute('value', gid);

		//obj2의 input 타입을 히든으로 만들고 name값과 value값을 저장
		//2 <input type="hidden" name="pw" value="gpw">
		    obj2.setAttribute('type', 'hidden');
		    obj2.setAttribute('name', 'pw');
		    obj2.setAttribute('value', gpw);

		//obj3의 input 타입을 히든으로 만들고 name값과 value값을 저장
		//3 <input type="hidden" name="lgoin_value" value="login_value">
		    obj3.setAttribute('type', 'hidden');
		    obj3.setAttribute('name', 'login_value');
		    obj3.setAttribute('value', login_value);

		//href 메소드 get을 post로 바꿈
		f.appendChild(obj1);
		f.appendChild(obj2);
		f.appendChild(obj3);

		    f.setAttribute('method', 'post');

		    f.setAttribute('action', 'login');

		    document.body.appendChild(f);

		    f.submit();




	}

	var url = "www.naver.com"; 
	 
	function openId(){ 
		 
		    var option = 'scrollbars=no, left=400, top=200, width=440, height=550'; 
		 
		    var name = '아이디 찾기'; 
		 
		    // option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
		    window.open(url, name, option); 
	} 
}

var url = '열고 싶은 주소'; 
 
function openPw(){ 
	 
	    var option = 'scrollbars=no, left=400, top=200, width=440, height=550'; 
	 
	    var name = '아이디 찾기'; 
	 
	    // option 변수를 사용하지 않고 직접 옵션을 넣어줘도 된다.
	    window.open(url, name, option); 
} 



});

