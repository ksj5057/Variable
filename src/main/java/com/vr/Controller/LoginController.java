package com.vr.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("Login_L")
	public String Login() {
		return "Member/Login_L";
	}
	
	@GetMapping("MemberShip_L")
	public String MemberShip_L() {
		return "Member/MemberShip_L";
	}
	
}	
