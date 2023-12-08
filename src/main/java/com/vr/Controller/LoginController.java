package com.vr.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="Login_L", method = {RequestMethod.GET, RequestMethod.POST})
	public String Loginr() {
		return "Member/Login_L";
	}	

	@GetMapping("MemberShip_L")
	public String MemberShip_L() {
		return "Member/MemberShip_L";
	}
	
	

}