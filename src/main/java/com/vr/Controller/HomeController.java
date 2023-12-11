package com.vr.Controller;


import com.vr.Model.*;
import com.vr.Service.MemberService;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MemberService ms;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
		public String main() {
			return "main";
		}
	
	@RequestMapping(value = "member", method = RequestMethod.GET)
	public void abcdefg(Model model) {
		model.addAttribute("memberid", "hong1234");
	}
	
	//회원가입 화면에서 회원가입 버튼 클릭시 메소드 실행
	@RequestMapping(value = "member", method = RequestMethod.POST)
	public String qwerty(MemberDTO member) {
		ms.join(member);
		return "Member/Login_L";
	}
	
	// 로그인 화면 jsp
	@RequestMapping(value="Login_L", method = {RequestMethod.GET, RequestMethod.POST})
	public String Loginr() {
		return "Member/Login_L";
	}	
	// 회원가입 화면 js p
	@GetMapping("MemberShip_L")
	public String MemberShip_L() {
		return "Member/MemberShip_L";
	}

	@PostMapping("login")
	public String login(MemberDTO member, HttpSession session, Model model) {
		//ms.login값이 null이 아니면
		if(ms.login(member) != null) {
		//로그인해라
		session.setAttribute("login", ms.login(member));
		//그리고 로그인 화면으로 이동
		return "main_m";
		//그렇지않으면
		}else {
		//로그인 하지마라
		//로그인 화면으로 이동.
		return "Member/Login_L";
		}
	}
		
	@PostMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "logform";
	}
}    