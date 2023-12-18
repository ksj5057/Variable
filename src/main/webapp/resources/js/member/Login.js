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